.class public final Lcom/android/systemui/shade/NotificationPanelViewController$17;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$17;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/android/systemui/shade/NotificationPanelViewController;->ADDITIONAL_TAP_REQUIRED_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 2
    .line 3
    const-string p1, "NotificationPanelView"

    .line 4
    .line 5
    const-string/jumbo p2, "updateStyle, onNavigationColorUpdateRequired"

    .line 6
    .line 7
    .line 8
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$17;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 14
    .line 15
    const-string p1, "navibar"

    .line 16
    .line 17
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    or-int/lit8 p1, p2, 0x10

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    and-int/lit8 p1, p2, -0x11

    .line 37
    .line 38
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
