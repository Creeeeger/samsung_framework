.class public final Lcom/android/systemui/power/PowerUI$11;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$11;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$11;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mIsChangedStringAfterCharging:Z

    .line 5
    .line 6
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :pswitch_0
    const/16 v0, 0xa

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :pswitch_1
    const/16 v0, 0xb

    .line 16
    .line 17
    :goto_0
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryChargingType:I

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSecPowerNotificationWarnings:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 20
    .line 21
    iget p0, p0, Lcom/android/systemui/power/PowerUI;->mSuperFastCharger:I

    .line 22
    .line 23
    iget v2, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    .line 24
    .line 25
    iput v2, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    .line 26
    .line 27
    iput v0, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    .line 28
    .line 29
    iput p0, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSuperFastCharger:I

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showChargingNotice()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
