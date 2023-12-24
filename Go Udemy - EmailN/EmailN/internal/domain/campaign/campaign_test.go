package domain_campaign

import (
	"testing"
	"time"

	"github.com/stretchr/testify/assert"
)

var (
	name    = "Campaign X"
	content = "Content"
	emails  = []string{"email1@email.com", "email2@email.com", "email3@email.com"}
)

func TestNewCampaign(t *testing.T) {
	// arrange
	assert := assert.New(t)

	// act
	campaign, _ := NewCampaign(name, content, emails)

	// asserts
	assert.Equal(campaign.Name, name)
	assert.Equal(campaign.Content, content)
	assert.Equal(len(campaign.Contacts), len(emails))
}

func TestNewCampaingID(t *testing.T) {

	assert := assert.New(t)

	campaign, _ := NewCampaign(name, content, emails)

	assert.NotNil(campaign.ID)
	assert.NotEmpty(campaign.ID)
}

func TestNewCreatedAt(t *testing.T) {

	assert := assert.New(t)

	now := time.Now().Add(-time.Minute)

	campaign, _ := NewCampaign(name, content, emails)

	assert.Greater(campaign.CreatedAt, now)
}
