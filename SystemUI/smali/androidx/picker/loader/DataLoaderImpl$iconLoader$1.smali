.class public final Landroidx/picker/loader/DataLoaderImpl$iconLoader$1;
.super Landroidx/picker/loader/CachedLoader;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Landroidx/picker/loader/DataLoaderImpl;


# direct methods
.method public constructor <init>(Landroidx/picker/loader/DataLoaderImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker/loader/DataLoaderImpl$iconLoader$1;->this$0:Landroidx/picker/loader/DataLoaderImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/picker/loader/CachedLoader;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final createValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    check-cast p1, Landroidx/picker/model/AppInfo;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/picker/loader/DataLoaderImpl$iconLoader$1;->this$0:Landroidx/picker/loader/DataLoaderImpl;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v0, p1, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    xor-int/2addr v0, v1

    .line 20
    const-string v3, "android.app.ApplicationPackageManager"

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    iget-object p0, p0, Landroidx/picker/loader/DataLoaderImpl;->packageManagerHelper:Landroidx/picker/helper/PackageManagerHelper;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p1, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    xor-int/2addr v0, v1

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p1, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v5, p1, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    .line 39
    .line 40
    iget v6, p1, Landroidx/picker/model/AppInfo;->user:I

    .line 41
    .line 42
    move-object v7, p0

    .line 43
    check-cast v7, Landroidx/picker/helper/PackageManagerHelperImpl;

    .line 44
    .line 45
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance v8, Landroid/content/ComponentName;

    .line 49
    .line 50
    invoke-direct {v8, v0, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v7, v6, v0}, Landroidx/picker/helper/PackageManagerHelperImpl;->getPackageManager(ILjava/lang/String;)Landroid/content/pm/PackageManager;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-class v5, Landroid/content/ComponentName;

    .line 58
    .line 59
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 60
    .line 61
    filled-new-array {v5, v6}, [Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const-string/jumbo v6, "semGetActivityIconForIconTray"

    .line 66
    .line 67
    .line 68
    invoke-static {v3, v6, v5}, Landroidx/reflect/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-eqz v3, :cond_0

    .line 73
    .line 74
    filled-new-array {v8, v2}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v0, v3, v2}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    instance-of v2, v0, Landroid/graphics/drawable/Drawable;

    .line 83
    .line 84
    if-eqz v2, :cond_0

    .line 85
    .line 86
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_0
    move-object v0, v4

    .line 90
    :goto_0
    if-nez v0, :cond_3

    .line 91
    .line 92
    iget-object v0, p1, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    .line 93
    .line 94
    iget-object v2, p1, Landroidx/picker/model/AppInfo;->activityName:Ljava/lang/String;

    .line 95
    .line 96
    iget p1, p1, Landroidx/picker/model/AppInfo;->user:I

    .line 97
    .line 98
    new-instance v3, Landroid/content/ComponentName;

    .line 99
    .line 100
    invoke-direct {v3, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, p1, v0}, Landroidx/picker/helper/PackageManagerHelperImpl;->getPackageManager(ILjava/lang/String;)Landroid/content/pm/PackageManager;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    .line 108
    .line 109
    .line 110
    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_2

    .line 112
    :cond_1
    iget-object v0, p1, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    .line 113
    .line 114
    iget v5, p1, Landroidx/picker/model/AppInfo;->user:I

    .line 115
    .line 116
    move-object v6, p0

    .line 117
    check-cast v6, Landroidx/picker/helper/PackageManagerHelperImpl;

    .line 118
    .line 119
    invoke-virtual {v6, v5, v0}, Landroidx/picker/helper/PackageManagerHelperImpl;->getPackageManager(ILjava/lang/String;)Landroid/content/pm/PackageManager;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    const-class v7, Ljava/lang/String;

    .line 124
    .line 125
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 126
    .line 127
    filled-new-array {v7, v8}, [Ljava/lang/Class;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    const-string/jumbo v8, "semGetApplicationIconForIconTray"

    .line 132
    .line 133
    .line 134
    invoke-static {v3, v8, v7}, Landroidx/reflect/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    if-eqz v3, :cond_2

    .line 139
    .line 140
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v5, v3, v0}, Landroidx/reflect/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    instance-of v2, v0, Landroid/graphics/drawable/Drawable;

    .line 149
    .line 150
    if-eqz v2, :cond_2

    .line 151
    .line 152
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_2
    move-object v0, v4

    .line 156
    :goto_1
    if-nez v0, :cond_3

    .line 157
    .line 158
    iget-object v0, p1, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    .line 159
    .line 160
    iget p1, p1, Landroidx/picker/model/AppInfo;->user:I

    .line 161
    .line 162
    invoke-virtual {v6, p1, v0}, Landroidx/picker/helper/PackageManagerHelperImpl;->getPackageManager(ILjava/lang/String;)Landroid/content/pm/PackageManager;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    :try_start_1
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 167
    .line 168
    .line 169
    move-result-object v4
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    :catch_0
    :goto_2
    move-object v0, v4

    .line 171
    :cond_3
    if-nez v0, :cond_4

    .line 172
    .line 173
    move-object p1, p0

    .line 174
    check-cast p1, Landroidx/picker/helper/PackageManagerHelperImpl;

    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 180
    .line 181
    iget-object p1, p1, Landroidx/picker/helper/PackageManagerHelperImpl;->context:Landroid/content/Context;

    .line 182
    .line 183
    const v0, 0x7f08106c

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    :cond_4
    check-cast p0, Landroidx/picker/helper/PackageManagerHelperImpl;

    .line 194
    .line 195
    iget-object p0, p0, Landroidx/picker/helper/PackageManagerHelperImpl;->context:Landroid/content/Context;

    .line 196
    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    const v2, 0x7f070ab4

    .line 202
    .line 203
    .line 204
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    :try_start_2
    invoke-static {v0}, Landroidx/core/graphics/drawable/DrawableKt;->toBitmap$default(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-static {v2, p1, p1, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 217
    .line 218
    .line 219
    move-result-object p0

    .line 220
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 221
    .line 222
    invoke-direct {v1, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 223
    .line 224
    .line 225
    move-object v0, v1

    .line 226
    goto :goto_3

    .line 227
    :catch_1
    move-exception p0

    .line 228
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 229
    .line 230
    .line 231
    :goto_3
    return-object v0
.end method
