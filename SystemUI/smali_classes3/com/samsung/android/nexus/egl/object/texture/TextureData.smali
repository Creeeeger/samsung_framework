.class public final Lcom/samsung/android/nexus/egl/object/texture/TextureData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final glId:I

.field public final glIndex:I

.field public final handle:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glId:I

    .line 9
    .line 10
    iput v0, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glIndex:I

    .line 11
    .line 12
    if-eqz p1, :cond_4

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_0
    const/4 v1, 0x1

    .line 23
    new-array v2, v1, [I

    .line 24
    .line 25
    invoke-static {v1, v2, v0}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string v3, "glGenTextures = "

    .line 31
    .line 32
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    aget v3, v2, v0

    .line 36
    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    aget v1, v2, v0

    .line 48
    .line 49
    if-ltz v1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/16 v3, 0xde1

    .line 59
    .line 60
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 61
    .line 62
    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v5, "glBindTexture handle = "

    .line 66
    .line 67
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const/16 v1, 0x2801

    .line 81
    .line 82
    const v4, 0x46180400    # 9729.0f

    .line 83
    .line 84
    .line 85
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 86
    .line 87
    .line 88
    const/16 v1, 0x2800

    .line 89
    .line 90
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 91
    .line 92
    .line 93
    const/16 v1, 0x2802

    .line 94
    .line 95
    const v4, 0x812f

    .line 96
    .line 97
    .line 98
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 99
    .line 100
    .line 101
    const/16 v1, 0x2803

    .line 102
    .line 103
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 104
    .line 105
    .line 106
    const-string v1, "glTexParameteri"

    .line 107
    .line 108
    invoke-static {v1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v3, v0, p1, v0}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 112
    .line 113
    .line 114
    const-string p1, "texImage2D"

    .line 115
    .line 116
    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 120
    .line 121
    .line 122
    const-string p1, "glBindTexture : release"

    .line 123
    .line 124
    invoke-static {p1}, Lcom/samsung/android/nexus/egl/utils/EglUtils;->checkGlError(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_2
    :goto_0
    aget p1, v2, v0

    .line 128
    .line 129
    iput p1, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->handle:I

    .line 130
    .line 131
    iput p2, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glIndex:I

    .line 132
    .line 133
    const p1, 0x84c0

    .line 134
    .line 135
    .line 136
    add-int/2addr p2, p1

    .line 137
    const p1, 0x84df

    .line 138
    .line 139
    .line 140
    if-le p2, p1, :cond_3

    .line 141
    .line 142
    move p2, p1

    .line 143
    :cond_3
    iput p2, p0, Lcom/samsung/android/nexus/egl/object/texture/TextureData;->glId:I

    .line 144
    .line 145
    :cond_4
    :goto_1
    return-void
.end method
