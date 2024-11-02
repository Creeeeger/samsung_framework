.class public final Lcom/android/systemui/wallpaper/KeyguardWallpaperController$7;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$7;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string/jumbo p1, "which"

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    sget-object p2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 10
    .line 11
    const-string p2, "onReceive: system wallpaper has been changed. which = "

    .line 12
    .line 13
    const-string v0, "KeyguardWallpaperController"

    .line 14
    .line 15
    invoke-static {p2, p1, v0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    if-lez p1, :cond_0

    .line 19
    .line 20
    iget-object p2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$7;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 21
    .line 22
    iget-object p2, p2, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    .line 23
    .line 24
    const/16 v0, 0x3eb

    .line 25
    .line 26
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$7;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->mWorkHandler:Lcom/android/systemui/wallpaper/KeyguardWallpaperController$6;

    .line 35
    .line 36
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method
