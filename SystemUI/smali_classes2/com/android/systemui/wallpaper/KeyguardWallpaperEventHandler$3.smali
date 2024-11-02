.class public final Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 3

    .line 1
    const-string v0, "KeyguardWallpaperEventHandler"

    .line 2
    .line 3
    const-string v1, "onFinishedGoingToSleep()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 9
    .line 10
    const/16 v0, 0x343

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, -0x1

    .line 14
    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onFinishedWakingUp()V
    .locals 3

    .line 1
    const-string v0, "KeyguardWallpaperEventHandler"

    .line 2
    .line 3
    const-string v1, "onFinishedWakingUp()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 9
    .line 10
    const/16 v0, 0x344

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, -0x1

    .line 14
    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onStartedGoingToSleep()V
    .locals 3

    .line 1
    const-string v0, "KeyguardWallpaperEventHandler"

    .line 2
    .line 3
    const-string v1, "onStartedGoingToSleep())"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 9
    .line 10
    const/16 v0, 0x341

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, -0x1

    .line 14
    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 3

    .line 1
    const-string v0, "KeyguardWallpaperEventHandler"

    .line 2
    .line 3
    const-string v1, "onStartedWakingUp()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler$3;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;

    .line 9
    .line 10
    const/16 v0, 0x342

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, -0x1

    .line 14
    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;->-$$Nest$msendMessage(Lcom/android/systemui/wallpaper/KeyguardWallpaperEventHandler;ILjava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
