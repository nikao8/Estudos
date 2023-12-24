package domain_campaign

import (
	"errors"
	"time"

	"github.com/rs/xid"
)

type Contact struct {
	Email string
}

type Campaign struct {
	ID        string
	Name      string
	CreatedAt time.Time
	Content   string
	Contacts  []Contact
}

func NewCampaign(name string, content string, emails []string) (*Campaign, error) {

	if name == "" {
		return nil, errors.New("name is required")
	} else if content == "" {
		return nil, errors.New("content is required")
	} else if len(emails) == 0 {
		return nil, errors.New("contacts is required")
	}

	contacts := make([]Contact, len(emails))

	for i, email := range emails {
		contacts[i].Email = email
	}

	return &Campaign{
		ID:        xid.New().String(),
		Name:      name,
		CreatedAt: time.Now(),
		Content:   content,
		Contacts:  contacts,
	}, nil
}
