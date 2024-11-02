.class public final Lcom/android/systemui/wallpaper/colors/ColorData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final colors:Landroid/app/SemWallpaperColors;

.field public final isLockStarEnabled:Z

.field public final isOpenTheme:Z

.field public final isOpenThemeLockWallpaper:Z


# direct methods
.method public constructor <init>(Landroid/app/SemWallpaperColors;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenTheme:Z

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenThemeLockWallpaper:Z

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isLockStarEnabled:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/wallpaper/colors/ColorData;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/wallpaper/colors/ColorData;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    .line 16
    .line 17
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenTheme:Z

    .line 25
    .line 26
    iget-boolean v3, p1, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenTheme:Z

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenThemeLockWallpaper:Z

    .line 32
    .line 33
    iget-boolean v3, p1, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenThemeLockWallpaper:Z

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isLockStarEnabled:Z

    .line 39
    .line 40
    iget-boolean p1, p1, Lcom/android/systemui/wallpaper/colors/ColorData;->isLockStarEnabled:Z

    .line 41
    .line 42
    if-eq p0, p1, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenTheme:Z

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    move v2, v1

    .line 15
    :cond_0
    add-int/2addr v0, v2

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenThemeLockWallpaper:Z

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    move v2, v1

    .line 23
    :cond_1
    add-int/2addr v0, v2

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    .line 26
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isLockStarEnabled:Z

    .line 27
    .line 28
    if-eqz p0, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move v1, p0

    .line 32
    :goto_0
    add-int/2addr v0, v1

    .line 33
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ColorData(colors="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->colors:Landroid/app/SemWallpaperColors;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", isOpenTheme="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenTheme:Z

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", isOpenThemeLockWallpaper="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isOpenThemeLockWallpaper:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", isLockStarEnabled="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/colors/ColorData;->isLockStarEnabled:Z

    .line 39
    .line 40
    const-string v1, ")"

    .line 41
    .line 42
    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method
