.class public final Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$settingsListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$settingsListener$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController$settingsListener$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->carrierLogoVisibilityManager:Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isCarrierLogoEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/CarrierLogoVisibilityManager;->settingEnabled:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->updateCarrierLogoVisibility()V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CarrierHomeLogoViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isCarrierLogoEnabled()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    const-string p1, "Carrier logo setting changed="

    .line 23
    .line 24
    const-string v0, "CarrierHomeLogoViewController"

    .line 25
    .line 26
    invoke-static {p1, p0, v0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
