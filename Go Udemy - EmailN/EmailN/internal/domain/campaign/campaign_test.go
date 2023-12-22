package domain_campaign

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestNewCampaign(t *testing.T) {
	// arrange
	assert := assert.New(t)
	name := "Campaign X"
	content := "Content"
	emails := []string{"email1@email.com", "email2@email.com", "email3@email.com"}

	// act
	campaign := NewCampaign(name, content, emails)

	// asserts
	assert.Equal(campaign.Name, name)
	assert.Equal(campaign.Content, content)
	assert.Equal(len(campaign.Contacts), len(emails))
}
