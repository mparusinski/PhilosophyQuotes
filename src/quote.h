/*
  This program is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 2 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>
*/

#ifndef QUOTE_H
#define QUOTE_H

#include <QObject>
#include <QString>
#include <QSharedPointer>

class Quote : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString quote READ quote WRITE setQuote NOTIFY quoteChanged)
    Q_PROPERTY(QString philosopher READ philosopher WRITE setPhilosopher NOTIFY philosopherChanged)

public:
    typedef QSharedPointer<Quote> QuotePtr;

    explicit Quote(QObject *parent = 0);

    Quote(const QString& philosopher, const QString& quote, QObject* parent = 0);

    QString philosopher() const;
    void setPhilosopher(const QString& philosopher);

    QString quote() const;
    void setQuote(const QString& quote);

signals:
    void quoteChanged();
    void philosopherChanged();

public slots:

private:
    QString m_philosopher;
    QString m_quote;

};

#endif // QUOTE_H
