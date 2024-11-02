.class public final Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


# instance fields
.field public final mSettingsValueList:[Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V
    .locals 7

    .line 2
    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;->this$0:Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "icon_blacklist"

    .line 3
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo p1, "swipe_directly_to_quick_setting_area"

    .line 4
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo p1, "swipe_directly_to_quick_setting_position"

    .line 5
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo p1, "quickstar_qs_tile_layout_custom_matrix"

    .line 6
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo p1, "quickstar_qs_tile_layout_custom_matrix_width"

    .line 7
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string p1, "notification_apply_wallpaper_theme"

    .line 8
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo p1, "quickstar_indicator_clock_date_format"

    .line 9
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    filled-new-array/range {v0 .. v6}, [Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;->mSettingsValueList:[Landroid/net/Uri;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager;)V

    return-void
.end method


# virtual methods
.method public final onChanged(Landroid/net/Uri;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/os/Handler;

    .line 11
    .line 12
    new-instance v0, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener$$ExternalSyntheticLambda0;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/slimindicator/SlimIndicatorSettingsBackUpManager$SettingsListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
