.class public final Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;


# instance fields
.field public final context:Landroid/content/Context;

.field public final settingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final addColorCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    const v0, 0x7f0601fe

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 13
    .line 14
    const-string/jumbo v1, "navigationbar_color"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    .line 21
    .line 22
    const-string/jumbo v0, "navigationbar_current_color"

    .line 23
    .line 24
    .line 25
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final getNavigationBarColor()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/interactor/ColorSettingImpl;->context:Landroid/content/Context;

    .line 2
    .line 3
    const v0, 0x7f0601fd

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final setNavigationBarColor(I)V
    .locals 0

    .line 1
    return-void
.end method
