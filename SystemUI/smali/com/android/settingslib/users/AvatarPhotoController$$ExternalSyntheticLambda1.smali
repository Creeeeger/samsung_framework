.class public final synthetic Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/users/AvatarPhotoController;

.field public final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/users/AvatarPhotoController;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/users/AvatarPhotoController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda1;->f$0:Lcom/android/settingslib/users/AvatarPhotoController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    .line 4
    .line 5
    const-string v1, "AvatarPhotoController"

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/settingslib/users/AvatarPhotoController;->mContextInjector:Lcom/android/settingslib/users/AvatarPhotoController$ContextInjector;

    .line 8
    .line 9
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 10
    .line 11
    iget v4, v0, Lcom/android/settingslib/users/AvatarPhotoController;->mPhotoSize:I

    .line 12
    .line 13
    invoke-static {v4, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    new-instance v5, Landroid/graphics/Canvas;

    .line 18
    .line 19
    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 20
    .line 21
    .line 22
    :try_start_0
    move-object v6, v2

    .line 23
    check-cast v6, Lcom/android/settingslib/users/AvatarPhotoController$ContextInjectorImpl;

    .line 24
    .line 25
    iget-object v6, v6, Lcom/android/settingslib/users/AvatarPhotoController$ContextInjectorImpl;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    invoke-virtual {v6, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    .line 36
    .line 37
    .line 38
    move-result-object v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 39
    if-eqz v6, :cond_3

    .line 40
    .line 41
    const/4 v7, -0x1

    .line 42
    :try_start_1
    check-cast v2, Lcom/android/settingslib/users/AvatarPhotoController$ContextInjectorImpl;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/android/settingslib/users/AvatarPhotoController$ContextInjectorImpl;->mContext:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-instance v2, Landroid/media/ExifInterface;

    .line 55
    .line 56
    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 57
    .line 58
    .line 59
    const-string p0, "Orientation"

    .line 60
    .line 61
    invoke-virtual {v2, p0, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    .line 62
    .line 63
    .line 64
    move-result v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p0

    .line 67
    const-string v2, "Error while getting rotation"

    .line 68
    .line 69
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    :goto_0
    const/4 p0, 0x3

    .line 73
    const/4 v2, 0x0

    .line 74
    if-eq v7, p0, :cond_2

    .line 75
    .line 76
    const/4 p0, 0x6

    .line 77
    if-eq v7, p0, :cond_1

    .line 78
    .line 79
    const/16 p0, 0x8

    .line 80
    .line 81
    if-eq v7, p0, :cond_0

    .line 82
    .line 83
    move p0, v2

    .line 84
    goto :goto_1

    .line 85
    :cond_0
    const/16 p0, 0x10e

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const/16 p0, 0x5a

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const/16 p0, 0xb4

    .line 92
    .line 93
    :goto_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    .line 102
    .line 103
    .line 104
    move-result v7

    .line 105
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    .line 106
    .line 107
    .line 108
    move-result v8

    .line 109
    sub-int/2addr v8, v7

    .line 110
    div-int/lit8 v8, v8, 0x2

    .line 111
    .line 112
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    .line 113
    .line 114
    .line 115
    move-result v9

    .line 116
    sub-int/2addr v9, v7

    .line 117
    div-int/lit8 v9, v9, 0x2

    .line 118
    .line 119
    new-instance v10, Landroid/graphics/Matrix;

    .line 120
    .line 121
    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v11, Landroid/graphics/RectF;

    .line 125
    .line 126
    int-to-float v12, v8

    .line 127
    int-to-float v13, v9

    .line 128
    add-int/2addr v8, v7

    .line 129
    int-to-float v8, v8

    .line 130
    add-int/2addr v9, v7

    .line 131
    int-to-float v7, v9

    .line 132
    invoke-direct {v11, v12, v13, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 133
    .line 134
    .line 135
    new-instance v7, Landroid/graphics/RectF;

    .line 136
    .line 137
    int-to-float v4, v4

    .line 138
    const/4 v8, 0x0

    .line 139
    invoke-direct {v7, v8, v8, v4, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 140
    .line 141
    .line 142
    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 143
    .line 144
    invoke-virtual {v10, v11, v7, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 145
    .line 146
    .line 147
    int-to-float p0, p0

    .line 148
    const/high16 v7, 0x40000000    # 2.0f

    .line 149
    .line 150
    div-float/2addr v4, v7

    .line 151
    invoke-virtual {v10, p0, v4, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 152
    .line 153
    .line 154
    new-instance p0, Landroid/graphics/Paint;

    .line 155
    .line 156
    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v5, v6, v10, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 160
    .line 161
    .line 162
    new-instance p0, Ljava/io/File;

    .line 163
    .line 164
    iget-object v4, v0, Lcom/android/settingslib/users/AvatarPhotoController;->mImagesDir:Ljava/io/File;

    .line 165
    .line 166
    const-string v5, "CropEditUserPhoto.jpg"

    .line 167
    .line 168
    invoke-direct {p0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    .line 172
    .line 173
    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 174
    .line 175
    .line 176
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 177
    .line 178
    const/16 v5, 0x64

    .line 179
    .line 180
    invoke-virtual {v3, p0, v5, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 187
    .line 188
    .line 189
    goto :goto_2

    .line 190
    :catch_1
    move-exception p0

    .line 191
    const-string v3, "Cannot create temp file"

    .line 192
    .line 193
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .line 195
    .line 196
    :goto_2
    new-instance p0, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda2;

    .line 197
    .line 198
    invoke-direct {p0, v0, v2}, Lcom/android/settingslib/users/AvatarPhotoController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settingslib/users/AvatarPhotoController;I)V

    .line 199
    .line 200
    .line 201
    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 202
    .line 203
    .line 204
    :catch_2
    :cond_3
    return-void
.end method
