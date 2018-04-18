#ifndef REMOTECONTOL_H
#define REMOTECONTOL_H

#include <QObject>
#include <QString>

class RemoteContol : public QObject
{
    Q_OBJECT
public:
    explicit RemoteContol(QString host, int port, QObject *parent = nullptr);

signals:

public slots:
};

#endif // REMOTECONTOL_H
