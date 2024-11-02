.class public final Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;

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
    .locals 2

    .line 1
    const-wide/16 v0, 0x200

    .line 2
    .line 3
    and-long/2addr p1, v0

    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    cmp-long p1, p1, v0

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string p1, "background"

    .line 11
    .line 12
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager$2;->this$0:Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecStatusBarKeyguardViewManager;->updateBouncerNavigationBar(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
