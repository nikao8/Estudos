package domain_campaign

import (
	contract_campaign "EmailN/internal/contract/campaign"
	internal_errors "EmailN/internal/errors"
)

type Service struct {
	Repository IRepository
}

func (s *Service) Create(inputDto contract_campaign.InputCreateDto) (string, error) {

	campaign, err := NewCampaign(inputDto.Name, inputDto.Content, inputDto.Emails)
	if err != nil {
		return "", err
	}

	err = s.Repository.Save(campaign)

	if err != nil {
		return "", internal_errors.ErrInternal
	}

	return campaign.ID, err
}
