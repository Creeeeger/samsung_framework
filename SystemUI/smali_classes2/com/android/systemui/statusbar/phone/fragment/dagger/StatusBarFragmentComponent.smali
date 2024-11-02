.class public interface abstract Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# virtual methods
.method public abstract getBatteryMeterViewController()Lcom/android/systemui/battery/BatteryMeterViewController;
.end method

.method public abstract getBoundsProvider()Lcom/android/systemui/statusbar/phone/StatusBarBoundsProvider;
.end method

.method public abstract getHeadsUpAppearanceController()Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;
.end method

.method public abstract getLightsOutNotifController()Lcom/android/systemui/statusbar/phone/LightsOutNotifController;
.end method

.method public abstract getPhoneStatusBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;
.end method

.method public abstract getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end method

.method public abstract getPhoneStatusBarViewController()Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;
.end method

.method public abstract getQSClockIndicatorViewController()Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;
.end method

.method public abstract getStartables()Ljava/util/Set;
.end method

.method public abstract getStatusBarDemoMode()Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;
.end method

.method public init()V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getBatteryMeterViewController()Lcom/android/systemui/battery/BatteryMeterViewController;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getHeadsUpAppearanceController()Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getPhoneStatusBarViewController()Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getLightsOutNotifController()Lcom/android/systemui/statusbar/phone/LightsOutNotifController;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getStatusBarDemoMode()Lcom/android/systemui/statusbar/phone/StatusBarDemoMode;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/fragment/dagger/StatusBarFragmentComponent;->getQSClockIndicatorViewController()Lcom/android/systemui/statusbar/policy/QSClockIndicatorViewController;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 41
    .line 42
    .line 43
    return-void
.end method
