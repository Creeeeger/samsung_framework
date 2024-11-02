.class Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/nexus/video/VideoGL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoFrameController"
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final UPDATE_COUNT_LIMIT:I = 0xf4240


# instance fields
.field needUpdateCount:I

.field final synthetic this$0:Lcom/samsung/android/nexus/video/VideoGL;

.field updatedCount:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/video/VideoGL;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->this$0:Lcom/samsung/android/nexus/video/VideoGL;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->needUpdateCount:I

    .line 8
    .line 9
    iput p1, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->updatedCount:I

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->updateSurface()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private updateSurface()V
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->hasFrame()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->updateTexImage()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return-void
.end method

.method private updateTexImage()V
    .locals 4

    .line 1
    const-string v0, "Cannot update surface. need to update count = "

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->this$0:Lcom/samsung/android/nexus/video/VideoGL;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/android/nexus/video/VideoGL;->access$100(Lcom/samsung/android/nexus/video/VideoGL;)Landroid/graphics/SurfaceTexture;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->this$0:Lcom/samsung/android/nexus/video/VideoGL;

    .line 13
    .line 14
    invoke-static {v1}, Lcom/samsung/android/nexus/video/VideoGL;->access$100(Lcom/samsung/android/nexus/video/VideoGL;)Landroid/graphics/SurfaceTexture;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iget-object v2, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->this$0:Lcom/samsung/android/nexus/video/VideoGL;

    .line 19
    .line 20
    iget-object v2, v2, Lcom/samsung/android/nexus/video/VideoGL;->mSTMatrix:[F

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 23
    .line 24
    .line 25
    const-string v1, "updateTexImage"

    .line 26
    .line 27
    invoke-static {v1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception v1

    .line 34
    :try_start_1
    invoke-static {}, Lcom/samsung/android/nexus/video/VideoGL;->access$200()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->needUpdateCount:I

    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", error = "

    .line 49
    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v2, v0}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->frameConsumed()V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->frameConsumed()V

    .line 72
    .line 73
    .line 74
    throw v0
.end method


# virtual methods
.method public frameConsumed()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->updatedCount:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->updatedCount:I

    .line 6
    .line 7
    const v2, 0xf4240

    .line 8
    .line 9
    .line 10
    if-lt v0, v2, :cond_0

    .line 11
    .line 12
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->updatedCount:I

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public frameUpdated()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->needUpdateCount:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iput v0, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->needUpdateCount:I

    .line 6
    .line 7
    const v2, 0xf4240

    .line 8
    .line 9
    .line 10
    if-lt v0, v2, :cond_0

    .line 11
    .line 12
    iput v1, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->needUpdateCount:I

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public hasFrame()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->needUpdateCount:I

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/nexus/video/VideoGL$VideoFrameController;->updatedCount:I

    .line 6
    .line 7
    if-ne p0, v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method
