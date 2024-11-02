.class public final synthetic Lcom/android/systemui/battery/BatteryMeterViewController$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/battery/BatteryMeterViewController$4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/battery/BatteryMeterViewController$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/battery/BatteryMeterViewController$4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$4$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/battery/BatteryMeterViewController$4;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$4;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    .line 7
    check-cast v0, Lcom/android/systemui/battery/BatteryMeterView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/battery/BatteryMeterViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isShowBatteryPercentInStatusBar()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iput-boolean v1, v0, Lcom/android/systemui/battery/BatteryMeterView;->mShowPercentSamsungSetting:Z

    .line 16
    .line 17
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 18
    .line 19
    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updateShowPercent()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
