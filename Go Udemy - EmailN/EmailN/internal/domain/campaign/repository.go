package domain_campaign

type IRepository interface {
	Save(campaign *Campaign) error
}
