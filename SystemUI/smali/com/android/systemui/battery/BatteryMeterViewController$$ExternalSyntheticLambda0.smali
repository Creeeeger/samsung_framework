.class public final synthetic Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/battery/BatteryMeterViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/battery/BatteryMeterViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast p1, Lcom/android/systemui/battery/BatteryMeterView;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowBatteryPercentInStatusBar()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput-boolean v0, p1, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentSamsungSetting:Z

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 16
    .line 17
    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updateShowPercent()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
