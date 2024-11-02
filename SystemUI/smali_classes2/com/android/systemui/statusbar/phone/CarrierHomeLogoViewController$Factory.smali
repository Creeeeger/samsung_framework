.class public final Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$Factory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field public final deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

.field public final slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

.field public final subscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/telephony/SubscriptionManager;Landroid/telephony/TelephonyManager;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$Factory;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$Factory;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$Factory;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$Factory;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$Factory;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$Factory;->simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$Factory;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$Factory;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$Factory;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$Factory;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$Factory;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$Factory;->carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    .line 27
    .line 28
    iput-object p13, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$Factory;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 29
    .line 30
    return-void
.end method
