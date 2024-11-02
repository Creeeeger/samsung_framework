.class public Lcom/samsung/android/nexus/egl/world/BaseWorld;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mMVMatrix:[F

.field public final mMVPMatrix:[F

.field public final mModelMatrix:[F

.field public mProjectionMatrix:[F

.field public final mViewMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    new-array v1, v0, [F

    .line 7
    .line 8
    iput-object v1, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mProjectionMatrix:[F

    .line 9
    .line 10
    new-array v2, v0, [F

    .line 11
    .line 12
    iput-object v2, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mViewMatrix:[F

    .line 13
    .line 14
    new-array v3, v0, [F

    .line 15
    .line 16
    iput-object v3, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mModelMatrix:[F

    .line 17
    .line 18
    new-array v4, v0, [F

    .line 19
    .line 20
    iput-object v4, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVMatrix:[F

    .line 21
    .line 22
    new-array v0, v0, [F

    .line 23
    .line 24
    iput-object v0, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVPMatrix:[F

    .line 25
    .line 26
    const/4 p0, 0x0

    .line 27
    invoke-static {v1, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 28
    .line 29
    .line 30
    invoke-static {v2, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 31
    .line 32
    .line 33
    invoke-static {v3, p0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public final sendParams(Lcom/samsung/android/nexus/egl/core/Shader;)V
    .locals 12

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVMatrix:[F

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iget-object v2, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mViewMatrix:[F

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    iget-object v4, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mModelMatrix:[F

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 14
    .line 15
    .line 16
    iget-object v6, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVPMatrix:[F

    .line 17
    .line 18
    const/4 v7, 0x0

    .line 19
    iget-object v8, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mProjectionMatrix:[F

    .line 20
    .line 21
    const/4 v9, 0x0

    .line 22
    iget-object v10, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVMatrix:[F

    .line 23
    .line 24
    const/4 v11, 0x0

    .line 25
    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iget v2, p1, Lcom/samsung/android/nexus/egl/core/Shader;->modelMatrixHandle:I

    .line 30
    .line 31
    if-ltz v2, :cond_1

    .line 32
    .line 33
    iget-object v3, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVMatrix:[F

    .line 34
    .line 35
    invoke-static {v2, v0, v1, v3, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget p1, p1, Lcom/samsung/android/nexus/egl/core/Shader;->mvpMatrixHandle:I

    .line 39
    .line 40
    if-ltz p1, :cond_2

    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/android/nexus/egl/world/BaseWorld;->mMVPMatrix:[F

    .line 43
    .line 44
    invoke-static {p1, v0, v1, p0, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method
