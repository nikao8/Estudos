package domain_campaign

import (
	contract_campaign "EmailN/internal/contract/campaign"
	internal_errors "EmailN/internal/errors"
	"errors"
	"testing"

	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/mock"
)

var (
	inputCreateDto = contract_campaign.InputCreateDto{
		Name:    "Test X",
		Content: "Body Input",
		Emails:  []string{"teste1@email.com", "teste2@email.com", "teste3@email.com"},
	}

	service = Service{}
)

type repositoryMock struct {
	mock.Mock
}

func (r *repositoryMock) Save(campaign *Campaign) error {
	args := r.Called(campaign)
	return args.Error(0)
}

func TestCreateCampaign(t *testing.T) {
	assert := assert.New(t)
	service := Service{}

	id, err := service.Create(inputCreateDto)

	assert.Nil(err)
	assert.NotNil(id)
}

func TestCreateCampaignValidateDomainError(t *testing.T) {
	assert := assert.New(t)
	service := Service{}
	inputCreateDto.Name = ""

	_, err := service.Create(inputCreateDto)

	assert.NotNil(err)
	assert.Equal("name is required", err.Error())
}

func TestCreateSaveCampaign(t *testing.T) {
	repositoryMock := new(repositoryMock)

	repositoryMock.On("Save", mock.MatchedBy(func(campaign *Campaign) bool {
		if campaign.Name != inputCreateDto.Name || campaign.Content != inputCreateDto.Content || len(campaign.Contacts) != len(inputCreateDto.Emails) {
			return false
		}

		return true
	})).Return(nil)
	service.Repository = repositoryMock

	service.Create(inputCreateDto)

	repositoryMock.AssertExpectations(t)
}

func TestCreateCampaignValidateRepositorySave(t *testing.T) {
	assert := assert.New(t)
	repositoryMock := new(repositoryMock)

	repositoryMock.On("Save", mock.Anything).Return(errors.New("error to save on database"))
	service.Repository = repositoryMock

	_, err := service.Create(inputCreateDto)

	assert.True(errors.Is(internal_errors.ErrInternal, err))
}
