.class public Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;,
        Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;
    }
.end annotation


# instance fields
.field actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;",
            ">;"
        }
    .end annotation
.end field

.field actionsToShowInCompact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field active:Z

.field app:Ljava/lang/String;

.field appIcon:Landroid/graphics/drawable/Drawable;

.field artist:Ljava/lang/CharSequence;

.field artwork:Landroid/graphics/drawable/Icon;

.field backgroundColor:I

.field clickIntent:Landroid/app/PendingIntent;

.field device:Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;

.field foregroundColor:I

.field hasCheckedForResume:Z

.field initialized:Z

.field notificationKey:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field resumeAction:Ljava/lang/Runnable;

.field resumption:Z

.field song:Ljava/lang/CharSequence;

.field token:Landroid/media/session/MediaSession$Token;

.field userId:I


# direct methods
.method public constructor <init>(IZIILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;ZLjava/lang/Runnable;ZLjava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZII",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/media/session/MediaSession$Token;",
            "Landroid/app/PendingIntent;",
            "Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;",
            "Z",
            "Ljava/lang/Runnable;",
            "Z",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move v1, p1

    .line 6
    iput v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->userId:I

    .line 7
    .line 8
    move v1, p2

    .line 9
    iput-boolean v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->initialized:Z

    .line 10
    .line 11
    move v1, p3

    .line 12
    iput v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->backgroundColor:I

    .line 13
    .line 14
    move v1, p4

    .line 15
    iput v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->foregroundColor:I

    .line 16
    .line 17
    move-object v1, p5

    .line 18
    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->app:Ljava/lang/String;

    .line 19
    .line 20
    move-object v1, p6

    .line 21
    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    move-object v1, p7

    .line 24
    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->artist:Ljava/lang/CharSequence;

    .line 25
    .line 26
    move-object v1, p8

    .line 27
    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->song:Ljava/lang/CharSequence;

    .line 28
    .line 29
    move-object v1, p9

    .line 30
    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->artwork:Landroid/graphics/drawable/Icon;

    .line 31
    .line 32
    move-object v1, p10

    .line 33
    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->actions:Ljava/util/List;

    .line 34
    .line 35
    move-object v1, p11

    .line 36
    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->actionsToShowInCompact:Ljava/util/List;

    .line 37
    .line 38
    move-object v1, p12

    .line 39
    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->packageName:Ljava/lang/String;

    .line 40
    .line 41
    move-object v1, p13

    .line 42
    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 43
    .line 44
    move-object/from16 v1, p14

    .line 45
    .line 46
    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->clickIntent:Landroid/app/PendingIntent;

    .line 47
    .line 48
    move-object/from16 v1, p15

    .line 49
    .line 50
    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->device:Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;

    .line 51
    .line 52
    move/from16 v1, p16

    .line 53
    .line 54
    iput-boolean v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->active:Z

    .line 55
    .line 56
    move-object/from16 v1, p17

    .line 57
    .line 58
    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->resumeAction:Ljava/lang/Runnable;

    .line 59
    .line 60
    move/from16 v1, p18

    .line 61
    .line 62
    iput-boolean v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->resumption:Z

    .line 63
    .line 64
    move-object/from16 v1, p19

    .line 65
    .line 66
    iput-object v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->notificationKey:Ljava/lang/String;

    .line 67
    .line 68
    move/from16 v1, p20

    .line 69
    .line 70
    iput-boolean v1, v0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->hasCheckedForResume:Z

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->actions:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getActionsToShowInCompact()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->actionsToShowInCompact:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public getApp()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->app:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method public getArtist()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->artist:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public getArtwork()Landroid/graphics/drawable/Icon;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->artwork:Landroid/graphics/drawable/Icon;

    .line 2
    .line 3
    return-object p0
.end method

.method public getBackgroundColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->backgroundColor:I

    .line 2
    .line 3
    return p0
.end method

.method public getClickIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->clickIntent:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-object p0
.end method

.method public getDevice()Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->device:Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;

    .line 2
    .line 3
    return-object p0
.end method

.method public getForegroundColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->foregroundColor:I

    .line 2
    .line 3
    return p0
.end method

.method public getNotificationKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->notificationKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getResumeAction()Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->resumeAction:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSong()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->song:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object p0
.end method

.method public getToken()Landroid/media/session/MediaSession$Token;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->userId:I

    .line 2
    .line 3
    return p0
.end method

.method public isActive()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->active:Z

    .line 2
    .line 3
    return p0
.end method

.method public isHasCheckedForResume()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->hasCheckedForResume:Z

    .line 2
    .line 3
    return p0
.end method

.method public isInitialized()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->initialized:Z

    .line 2
    .line 3
    return p0
.end method

.method public isResumption()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->resumption:Z

    .line 2
    .line 3
    return p0
.end method

.method public setActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->actions:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setActionsToShowInCompact(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->actionsToShowInCompact:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setActive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->active:Z

    .line 2
    .line 3
    return-void
.end method

.method public setApp(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->app:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setAppIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-void
.end method

.method public setArtist(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->artist:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-void
.end method

.method public setArtwork(Landroid/graphics/drawable/Icon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->artwork:Landroid/graphics/drawable/Icon;

    .line 2
    .line 3
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->backgroundColor:I

    .line 2
    .line 3
    return-void
.end method

.method public setClickIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->clickIntent:Landroid/app/PendingIntent;

    .line 2
    .line 3
    return-void
.end method

.method public setDevice(Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->device:Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;

    .line 2
    .line 3
    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->foregroundColor:I

    .line 2
    .line 3
    return-void
.end method

.method public setHasCheckedForResume(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->hasCheckedForResume:Z

    .line 2
    .line 3
    return-void
.end method

.method public setInitialized(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->initialized:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNotificationKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->notificationKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setResumeAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->resumeAction:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-void
.end method

.method public setResumption(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->resumption:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSong(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->song:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-void
.end method

.method public setToken(Landroid/media/session/MediaSession$Token;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 2
    .line 3
    return-void
.end method

.method public setUserId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/plugins/keyguardstatusview/PluginFaceWidgetMediaData;->userId:I

    .line 2
    .line 3
    return-void
.end method
