.class public final Lcom/android/systemui/media/taptotransfer/common/IconInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

.field public final icon:Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;

.field public final isAppIcon:Z

.field public final tint:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/shared/model/ContentDescription;Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;Ljava/lang/Integer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->icon:Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->tint:Ljava/lang/Integer;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->isAppIcon:Z

    .line 11
    .line 12
    return-void
.end method

.method public static copy$default(Lcom/android/systemui/media/taptotransfer/common/IconInfo;Lcom/android/systemui/common/shared/model/ContentDescription$Loaded;Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Loaded;ZI)Lcom/android/systemui/media/taptotransfer/common/IconInfo;
    .locals 1

    .line 1
    and-int/lit8 v0, p4, 0x1

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 v0, p4, 0x2

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->icon:Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 v0, p4, 0x4

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->tint:Ljava/lang/Integer;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    const/4 v0, 0x0

    .line 21
    :goto_0
    and-int/lit8 p4, p4, 0x8

    .line 22
    .line 23
    if-eqz p4, :cond_3

    .line 24
    .line 25
    iget-boolean p3, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->isAppIcon:Z

    .line 26
    .line 27
    :cond_3
    new-instance p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;

    .line 28
    .line 29
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/systemui/media/taptotransfer/common/IconInfo;-><init>(Lcom/android/systemui/common/shared/model/ContentDescription;Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;Ljava/lang/Integer;Z)V

    .line 30
    .line 31
    .line 32
    return-object p0
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
    instance-of v1, p1, Lcom/android/systemui/media/taptotransfer/common/IconInfo;

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
    check-cast p1, Lcom/android/systemui/media/taptotransfer/common/IconInfo;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

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
    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->icon:Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->icon:Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->tint:Ljava/lang/Integer;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->tint:Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->isAppIcon:Z

    .line 47
    .line 48
    iget-boolean p1, p1, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->isAppIcon:Z

    .line 49
    .line 50
    if-eq p0, p1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->icon:Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->tint:Ljava/lang/Integer;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    :goto_0
    add-int/2addr v1, v0

    .line 29
    mul-int/lit8 v1, v1, 0x1f

    .line 30
    .line 31
    iget-boolean p0, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->isAppIcon:Z

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    :cond_1
    add-int/2addr v1, p0

    .line 37
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "IconInfo(contentDescription="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", icon="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->icon:Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", tint="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->tint:Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", isAppIcon="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-boolean p0, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->isAppIcon:Z

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p0, ")"

    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public final toTintedIcon()Lcom/android/systemui/common/shared/model/TintedIcon;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->icon:Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Loaded;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->contentDescription:Lcom/android/systemui/common/shared/model/ContentDescription;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v1, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    .line 10
    .line 11
    check-cast v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Loaded;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Loaded;->drawable:Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of v1, v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Resource;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    new-instance v1, Lcom/android/systemui/common/shared/model/Icon$Resource;

    .line 24
    .line 25
    check-cast v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Resource;

    .line 26
    .line 27
    iget v0, v0, Lcom/android/systemui/media/taptotransfer/common/MediaTttIcon$Resource;->res:I

    .line 28
    .line 29
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    new-instance v0, Lcom/android/systemui/common/shared/model/TintedIcon;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/common/IconInfo;->tint:Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/common/shared/model/TintedIcon;-><init>(Lcom/android/systemui/common/shared/model/Icon;Ljava/lang/Integer;)V

    .line 37
    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 41
    .line 42
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw p0
.end method
