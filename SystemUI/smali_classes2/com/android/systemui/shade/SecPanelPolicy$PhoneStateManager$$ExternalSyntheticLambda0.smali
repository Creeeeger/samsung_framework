.class public final synthetic Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 10
    .line 11
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateQsExpansionEnabled()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p0, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 22
    .line 23
    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 26
    .line 27
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager;->mPhoneState:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    xor-int/lit8 p0, p0, 0x1

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->getCurrentState()Lcom/android/systemui/shade/NotificationShadeWindowState;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarSplitTouchable:Z

    .line 42
    .line 43
    if-eq v2, p0, :cond_0

    .line 44
    .line 45
    iput-boolean p0, v1, Lcom/android/systemui/shade/NotificationShadeWindowState;->statusBarSplitTouchable:Z

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    const-string/jumbo v0, "setStatusBarSplitTouchable:"

    .line 51
    .line 52
    .line 53
    const-string v1, "NotificationShadeWindowController"

    .line 54
    .line 55
    invoke-static {v0, p0, v1}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Lcom/android/systemui/shade/SecPanelPolicy$SecPanelSmartMirroringManager;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/systemui/shade/SecPanelPolicy$SecPanelSmartMirroringManager;->this$0:Lcom/android/systemui/shade/SecPanelPolicy;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/systemui/shade/SecPanelPolicy;->mPanelConfigurationBellTower:Lcom/android/systemui/shade/SecPanelConfigurationBellTower;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/android/systemui/shade/SecPanelConfigurationBellTower;->ringConfigurationBell()V

    .line 68
    .line 69
    .line 70
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelPolicy$SecPanelSmartMirroringManager;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->refreshTileList()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
