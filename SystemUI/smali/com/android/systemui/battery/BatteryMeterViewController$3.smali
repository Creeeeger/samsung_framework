.class public final Lcom/android/systemui/battery/BatteryMeterViewController$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/battery/BatteryMeterViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController$3;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBatteryLevelChanged(IZZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$3;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    .line 3
    iput-boolean p2, p0, Lcom/android/systemui/battery/BatteryMeterView;->mCharging:Z

    .line 4
    iput p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mLevel:I

    .line 5
    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updatePercentText()V

    return-void
.end method

.method public final onBatteryLevelChanged(IZZIIIZ)V
    .locals 12

    move-object v0, p0

    move/from16 v7, p7

    .line 6
    iget-object v8, v0, Lcom/android/systemui/battery/BatteryMeterViewController$3;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    iget-object v0, v8, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 7
    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    .line 8
    iget-boolean v1, v0, Lcom/android/systemui/battery/BatteryMeterView;->mIsDirectPowerMode:Z

    if-eq v1, v7, :cond_0

    .line 9
    iput-boolean v7, v0, Lcom/android/systemui/battery/BatteryMeterView;->mIsDirectPowerMode:Z

    .line 10
    invoke-virtual {v0}, Lcom/android/systemui/battery/BatteryMeterView;->updateShowPercent()V

    .line 11
    :cond_0
    new-instance v9, Lcom/android/systemui/battery/SamsungBatteryState;

    move-object v0, v9

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/battery/SamsungBatteryState;-><init>(IZZIIIZ)V

    .line 12
    iget-object v0, v8, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 13
    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/battery/BatteryMeterView;->mSamsungDrawable:Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;

    .line 15
    iget-object v1, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    .line 16
    iget v2, v1, Lcom/android/systemui/battery/SamsungBatteryState;->level:I

    .line 17
    iget v3, v9, Lcom/android/systemui/battery/SamsungBatteryState;->level:I

    const/4 v4, 0x1

    iget-boolean v5, v9, Lcom/android/systemui/battery/SamsungBatteryState;->isDirectPowerMode:Z

    iget v6, v9, Lcom/android/systemui/battery/SamsungBatteryState;->batteryOnline:I

    iget v7, v9, Lcom/android/systemui/battery/SamsungBatteryState;->batteryStatus:I

    iget v8, v9, Lcom/android/systemui/battery/SamsungBatteryState;->batteryHealth:I

    iget-boolean v10, v9, Lcom/android/systemui/battery/SamsungBatteryState;->pluggedIn:Z

    iget-boolean v11, v9, Lcom/android/systemui/battery/SamsungBatteryState;->charging:Z

    if-ne v2, v3, :cond_1

    .line 18
    iget-boolean v2, v1, Lcom/android/systemui/battery/SamsungBatteryState;->charging:Z

    if-ne v2, v11, :cond_1

    .line 19
    iget-boolean v2, v1, Lcom/android/systemui/battery/SamsungBatteryState;->pluggedIn:Z

    if-ne v2, v10, :cond_1

    .line 20
    iget v2, v1, Lcom/android/systemui/battery/SamsungBatteryState;->batteryHealth:I

    if-ne v2, v8, :cond_1

    .line 21
    iget v2, v1, Lcom/android/systemui/battery/SamsungBatteryState;->batteryOnline:I

    if-ne v2, v6, :cond_1

    .line 22
    iget v2, v1, Lcom/android/systemui/battery/SamsungBatteryState;->batteryStatus:I

    if-ne v2, v7, :cond_1

    .line 23
    iget-boolean v1, v1, Lcom/android/systemui/battery/SamsungBatteryState;->isDirectPowerMode:Z

    if-ne v1, v5, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v1, v4

    const-string/jumbo v2, "onBatteryLevelChanged isSomethingChanged: "

    const-string v4, "SamsungBatteryMeterDrawable"

    .line 24
    invoke-static {v2, v1, v4}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v1, :cond_3

    .line 25
    iput-object v9, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->batteryState:Lcom/android/systemui/battery/SamsungBatteryState;

    .line 26
    sget-boolean v1, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "Level: "

    const-string v2, ", PluggedIn: "

    const-string v9, ", Charging: "

    .line 27
    invoke-static {v1, v3, v2, v10, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 28
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", BatteryHealth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",BatteryStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", BatteryOnline: "

    const-string v3, ", IsDirectPowerMode: "

    .line 29
    invoke-static {v1, v7, v2, v6, v3}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v2, ","

    .line 30
    invoke-static {v1, v5, v2}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onBatteryLevelChanged - "

    .line 31
    invoke-static {v2, v1, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->postInvalidateHandler:Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable$postInvalidateHandler$1;

    sget v2, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->MSG_POST_INVALIDATE:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 33
    iget-object v0, v0, Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable;->postInvalidateHandler:Lcom/android/systemui/battery/LegacySamsungBatteryMeterDrawable$postInvalidateHandler$1;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void
.end method

.method public final onBatteryUnknownStateChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$3;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onIsBatteryDefenderChanged(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$3;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/android/systemui/battery/BatteryMeterView;->mIsBatteryDefender:Z

    .line 8
    .line 9
    if-eq v0, p1, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/battery/BatteryMeterView;->mIsBatteryDefender:Z

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updateContentDescription()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->scaleBatteryMeterViews()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public final onPowerSaveChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$3;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    return-void
.end method
