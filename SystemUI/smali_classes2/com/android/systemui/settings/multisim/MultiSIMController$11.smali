.class public final Lcom/android/systemui/settings/multisim/MultiSIMController$11;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$11;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "MultiSIMController"

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    const-string p1, "UpdateDataHandler MESSAGE_EMPTY"

    .line 10
    .line 11
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_0
    const-string p1, "MESSAGE_IMS_MANAGER_CONNECTED"

    .line 16
    .line 17
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$11;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 21
    .line 22
    sget-object v1, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCarrierNameAndPhoneNumber(Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :pswitch_1
    const-string p1, "MESSAGE_UPDATE_SUBSCRIPTION_INFO"

    .line 29
    .line 30
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$11;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 34
    .line 35
    iget-object v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isSubInfoReversed(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    iput-boolean v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mIsSlotReversed:Z

    .line 42
    .line 43
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$11;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mNeedCheckOpportunisticESim:Z

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateMultiSimReadyState(Z)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$11;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 52
    .line 53
    iget-object v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isDataEnabled()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iput-boolean p1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 60
    .line 61
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$11;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCarrierNameAndPhoneNumber(Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_2
    const-string p1, "MESSAGE_UPDATE_SERVICE_STATE"

    .line 68
    .line 69
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$11;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 73
    .line 74
    iget-object v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/android/systemui/settings/multisim/MultiSIMController;->isDataEnabled()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    iput-boolean p1, v1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 81
    .line 82
    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$11;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->updateCarrierNameAndPhoneNumber(Z)V

    .line 85
    .line 86
    .line 87
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$11;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    .line 88
    .line 89
    sget-object p1, Lcom/android/systemui/settings/multisim/MultiSIMController;->INTERNAL_URI:Landroid/net/Uri;

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
