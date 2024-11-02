.class Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$KeyguardWallpaperController;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyguardWallpaperController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;


# direct methods
.method private constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$KeyguardWallpaperController;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$KeyguardWallpaperController;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)V

    return-void
.end method


# virtual methods
.method public onSemBackupStatusChanged(III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSemMultipackApplied(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSemWallpaperChanged(IILandroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string p3, "onSemWallpaperChanged type="

    .line 2
    .line 3
    const-string v0, " which="

    .line 4
    .line 5
    const-string v1, "DesktopSystemUIBinder"

    .line 6
    .line 7
    invoke-static {p3, p1, v0, p2, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    and-int/lit8 p1, p2, 0x8

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    and-int/lit8 p1, p2, 0x2

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$KeyguardWallpaperController;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder$KeyguardWallpaperController;->this$0:Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;->access$000(Lcom/samsung/android/desktopsystemui/sharedlib/common/DesktopSystemUiBinder;)Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-interface {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/common/IDesktopBar;->onKeyguardWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const-string p0, "onSemWallpaperChanged - not for dex keyguard wallpaper"

    .line 42
    .line 43
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public onSemWallpaperColorsAnalysisRequested(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSemWallpaperColorsChanged(Landroid/app/SemWallpaperColors;II)V
    .locals 0

    .line 1
    return-void
.end method

.method public onWallpaperChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 0

    .line 1
    return-void
.end method
