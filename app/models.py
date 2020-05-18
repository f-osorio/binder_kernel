from app import db


class Bibliometrics(db.Model):
    __tablename__ = 'bibliometrics'

    handle = db.Column(db.Text, primary_key=True)
    year = db.Column(db.Integer)
    cites = db.Column(db.Integer)
    impact_factor = db.Column(db.Integer)
    if_5 = db.Column(db.Integer)
    documents_published = db.Column(db.Integer)
    h_index = db.Column(db.Integer)
    type = db.Column(db.Text)
    issn1 = db.Column(db.Text)
    issn2 = db.Column(db.Text)
    type2 = db.Column(db.Text)
    year3 = db.Column(db.Integer)
    scimago_id = db.Column(db.BigInteger)
    sjr = db.Column(db.Float)
    type4 = db.Column(db.Text)
    year5 = db.Column(db.Integer)
    journ_qual = db.Column(db.Text)
    type6 = db.Column(db.Text)
    year7 = db.Column(db.Integer)
    bwl = db.Column(db.Text)
    type8 = db.Column(db.Text)
    year9 = db.Column(db.Integer)
    vwl = db.Column(db.Text)
    journal_name = db.Column(db.Text)


    def __repr__(self):
        return '<Biblio: {} {} {} {}>'.format(self.handle, self.journal_name, self.impact_factor, self.h_index)

    def as_dict(self):
        return {var: str(getattr(self, var))
                    for var in dir(self) if var in self.__table__.columns}


class Altmetrics(db.Model):
    __tablename__ = 'altmetrics'

    id = db.Column(db.Integer, primary_key=True)
    altmetric_score = db.Column(db.Integer)
    title = db.Column(db.Text)
    journal_name = db.Column(db.Text)
    print_issn = db.Column(db.Text)
    online_issn = db.Column(db.Text)
    subjects = db.Column(db.Text)
    affiliation = db.Column(db.Text)
    publication_date = db.Column(db.Text)
    doi = db.Column(db.Text)
    news = db.Column(db.Integer)
    blog = db.Column(db.Integer)
    policy = db.Column(db.Integer)
    patent = db.Column(db.Integer)
    twitter = db.Column(db.Integer)
    peer_review = db.Column(db.Integer)
    weibo = db.Column(db.Integer)
    facebook = db.Column(db.Integer)
    wikipedia = db.Column(db.Integer)
    google = db.Column(db.Integer)
    linkedIn = db.Column(db.Integer)
    reddit = db.Column(db.Integer)
    pinterest = db.Column(db.Integer)
    f1000 = db.Column(db.Integer)
    qa = db.Column(db.Integer)
    videos = db.Column(db.Integer)
    syllabi = db.Column(db.Integer)
    mendeley = db.Column(db.Integer)
    dimensions_citations = db.Column(db.Integer)
    details_page = db.Column(db.Text)
    badge_url = db.Column(db.Text)


    def __repr__(self):
        return '<Altmetric: {} {} {} {}>'.format(self.id, self.title, self.doi, self.altmetric_score)


    def as_dict(self):
        return {var: getattr(self, var)
                    for var in dir(self) if var in self.__table__.columns}


class Mendeley(db.Model):
    __tablename__ = 'mendeley'

    id  = db.Column(db.Integer, primary_key=True)
    doi  = db.Column(db.Text)
    count  = db.Column(db.Integer)
    year  = db.Column(db.Text)
    issn  = db.Column(db.Text)
    title  = db.Column(db.Text)
    publisher  = db.Column(db.Text)
    discipline  = db.Column(db.Text)
    electronic  = db.Column(db.Text)


    def __repr__(self):
        return '<Mendeley: {} {} {} {}>'.format(self.id, self.title, self.doi, self.count)


    def as_dict(self):
        return {var: getattr(self, var)
                    for var in dir(self) if var in self.__table__.columns}
