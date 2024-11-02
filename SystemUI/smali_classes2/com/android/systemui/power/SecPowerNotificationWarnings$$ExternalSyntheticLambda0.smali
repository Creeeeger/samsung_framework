.class public final synthetic Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const-string v1, "SecPowerUI.Notification"

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string/jumbo p1, "showIncompleteChargerConnectionInfoPopUp() dismissed"

    .line 16
    .line 17
    .line 18
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

    .line 22
    .line 23
    return-void

    .line 24
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    const-string/jumbo p1, "showBatterySwellingLowTempPopup() dismissed"

    .line 30
    .line 31
    .line 32
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSwellingDialog:Landroidx/appcompat/app/AlertDialog;

    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
