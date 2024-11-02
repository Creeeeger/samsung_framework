.class public final Lcom/android/systemui/aod/AODAmbientWallpaperHelper$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/aod/AODAmbientWallpaperHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$1;->this$0:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onStartedGoingToSleep()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$1;->this$0:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->isAODAmbientWallpaperMode()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "onStartedGoingToSleep isAODAmbientWallpaperMode="

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "AODAmbientWallpaperHelper"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->setAODAmbientWallpaperState(Z)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final onStartedWakingUp()V
    .locals 2

    .line 1
    sget v0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->$r8$clinit:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/aod/AODAmbientWallpaperHelper$1;->this$0:Lcom/android/systemui/aod/AODAmbientWallpaperHelper;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "AODAmbientWallpaperHelper"

    .line 9
    .line 10
    const-string/jumbo v1, "onStartedWakingUp"

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/systemui/aod/AODAmbientWallpaperHelper;->setAODAmbientWallpaperState(Z)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
