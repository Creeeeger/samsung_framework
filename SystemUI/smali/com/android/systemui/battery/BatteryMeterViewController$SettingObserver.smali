.class public final Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/battery/BatteryMeterViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/battery/BatteryMeterViewController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 7
    .line 8
    check-cast p1, Lcom/android/systemui/battery/BatteryMeterView;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/android/systemui/battery/BatteryMeterView;->updateShowPercent()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p2, "battery_estimates_last_update_time"

    .line 18
    .line 19
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/battery/BatteryMeterViewController$SettingObserver;->this$0:Lcom/android/systemui/battery/BatteryMeterViewController;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 28
    .line 29
    check-cast p0, Lcom/android/systemui/battery/BatteryMeterView;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/android/systemui/battery/BatteryMeterView;->updatePercentText()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method
