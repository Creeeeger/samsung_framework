.class Lcom/sec/ims/mdmi/IMdmiEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/sec/ims/mdmi/IMdmiEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/mdmi/IMdmiEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/sec/ims/mdmi/IMdmiEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/ims/mdmi/IMdmiEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "com.sec.ims.mdmi.IMdmiEventListener"

    .line 2
    .line 3
    return-object p0
.end method

.method public onE911StatsUpdated(JJJJJDDD)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/sec/ims/mdmi/IMdmiEventListener$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    :try_start_0
    const-string v0, "com.sec.ims.mdmi.IMdmiEventListener"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    move-wide v3, p1

    .line 19
    invoke-virtual {v1, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 20
    .line 21
    .line 22
    move-wide v3, p3

    .line 23
    invoke-virtual {v1, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    .line 25
    .line 26
    move-wide v3, p5

    .line 27
    invoke-virtual {v1, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 28
    .line 29
    .line 30
    move-wide v3, p7

    .line 31
    invoke-virtual {v1, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    .line 33
    .line 34
    move-wide v3, p9

    .line 35
    invoke-virtual {v1, p9, p10}, Landroid/os/Parcel;->writeLong(J)V

    .line 36
    .line 37
    .line 38
    move-wide/from16 v3, p11

    .line 39
    .line 40
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 41
    .line 42
    .line 43
    move-wide/from16 v3, p13

    .line 44
    .line 45
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 46
    .line 47
    .line 48
    move-wide/from16 v3, p15

    .line 49
    .line 50
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 51
    .line 52
    .line 53
    move-object v0, p0

    .line 54
    iget-object v0, v0, Lcom/sec/ims/mdmi/IMdmiEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 55
    .line 56
    const/4 v3, 0x1

    .line 57
    const/4 v4, 0x0

    .line 58
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception v0

    .line 72
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 76
    .line 77
    .line 78
    throw v0
.end method
