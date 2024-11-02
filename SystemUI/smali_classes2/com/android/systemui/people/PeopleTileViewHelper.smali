.class public final Lcom/android/systemui/people/PeopleTileViewHelper;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ANY_DOUBLE_MARK_PATTERN:Ljava/util/regex/Pattern;

.field public static final DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

.field public static final DOUBLE_QUESTION_PATTERN:Ljava/util/regex/Pattern;

.field public static final EMOJI_PATTERN:Ljava/util/regex/Pattern;

.field public static final MIXED_MARK_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final mAppWidgetId:I

.field public final mContext:Landroid/content/Context;

.field public final mDensity:F

.field public final mHeight:I

.field public mIntegerFormat:Ljava/text/NumberFormat;

.field public final mIsLeftToRight:Z

.field public final mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

.field public final mLayoutSize:I

.field public mLocale:Ljava/util/Locale;

.field public mMediumVerticalPadding:I

.field public final mTile:Landroid/app/people/PeopleSpaceTile;

.field public final mWidth:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "[!][!]+"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    const-string v0, "[?][?]+"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_QUESTION_PATTERN:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    const-string v0, "[!?][!?]+"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->ANY_DOUBLE_MARK_PATTERN:Ljava/util/regex/Pattern;

    .line 24
    .line 25
    const-string v0, "![?].*|.*[?]!"

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->MIXED_MARK_PATTERN:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    const-string v0, "\\p{RI}\\p{RI}|(\\p{Emoji}(\\p{EMod}|\\x{FE0F}\\x{20E3}?|[\\x{E0020}-\\x{E007E}]+\\x{E007F})|[\\p{Emoji}&&\\p{So}])(\\x{200D}\\p{Emoji}(\\p{EMod}|\\x{FE0F}\\x{20E3}?|[\\x{E0020}-\\x{E007E}]+\\x{E007F})?)*"

    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;IIILcom/android/systemui/people/widget/PeopleTileKey;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 9
    .line 10
    iput p3, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mAppWidgetId:I

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 21
    .line 22
    iput p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    .line 23
    .line 24
    iput p4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    .line 25
    .line 26
    iput p5, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    .line 27
    .line 28
    const p1, 0x7f070cf9

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 p2, 0x1

    .line 36
    const/4 p3, 0x0

    .line 37
    const/4 p6, 0x2

    .line 38
    if-lt p5, p1, :cond_0

    .line 39
    .line 40
    const p1, 0x7f070cfb

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-lt p4, p1, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const p1, 0x7f070cfa

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-lt p5, p1, :cond_1

    .line 58
    .line 59
    const p1, 0x7f070cfc

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-lt p4, p1, :cond_1

    .line 67
    .line 68
    const p1, 0x7f07007d

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    const/4 p4, 0x4

    .line 76
    add-int/2addr p1, p4

    .line 77
    const v0, 0x7f07095a

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    add-int/2addr v0, p1

    .line 85
    sub-int/2addr p5, v0

    .line 86
    invoke-static {p5, p6}, Ljava/lang/Math;->floorDiv(II)I

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    const/16 p5, 0x10

    .line 91
    .line 92
    invoke-static {p1, p5}, Ljava/lang/Math;->min(II)I

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    iput p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mMediumVerticalPadding:I

    .line 101
    .line 102
    move p6, p2

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    move p6, p3

    .line 105
    :goto_0
    iput p6, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    .line 106
    .line 107
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_2

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    move p2, p3

    .line 119
    :goto_1
    iput-boolean p2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mIsLeftToRight:Z

    .line 120
    .line 121
    return-void
.end method

.method public static createRemoteViews(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILandroid/os/Bundle;Lcom/android/systemui/people/widget/PeopleTileKey;)Landroid/widget/RemoteViews;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 10
    .line 11
    const-string v1, "appWidgetSizes"

    .line 12
    .line 13
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const v2, 0x7f070288

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    div-float/2addr v1, v0

    .line 38
    float-to-int v1, v1

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const v3, 0x7f070285

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    div-float/2addr v2, v0

    .line 51
    float-to-int v0, v2

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    .line 53
    .line 54
    const/4 v3, 0x2

    .line 55
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    .line 57
    .line 58
    const-string v3, "appWidgetMinWidth"

    .line 59
    .line 60
    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const-string v4, "appWidgetMaxHeight"

    .line 65
    .line 66
    invoke-virtual {p3, v4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    new-instance v5, Landroid/util/SizeF;

    .line 71
    .line 72
    int-to-float v3, v3

    .line 73
    int-to-float v4, v4

    .line 74
    invoke-direct {v5, v3, v4}, Landroid/util/SizeF;-><init>(FF)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    const-string v3, "appWidgetMaxWidth"

    .line 81
    .line 82
    invoke-virtual {p3, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const-string v3, "appWidgetMinHeight"

    .line 87
    .line 88
    invoke-virtual {p3, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    new-instance v0, Landroid/util/SizeF;

    .line 93
    .line 94
    int-to-float v1, v1

    .line 95
    int-to-float p3, p3

    .line 96
    invoke-direct {v0, v1, p3}, Landroid/util/SizeF;-><init>(FF)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-object v1, v2

    .line 103
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-interface {p3}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    new-instance v1, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;

    .line 116
    .line 117
    invoke-direct {v1, p0, p1, p2, p4}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;Landroid/app/people/PeopleSpaceTile;ILcom/android/systemui/people/widget/PeopleTileKey;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-interface {p3, p0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p0

    .line 128
    check-cast p0, Ljava/util/Map;

    .line 129
    .line 130
    new-instance p1, Landroid/widget/RemoteViews;

    .line 131
    .line 132
    invoke-direct {p1, p0}, Landroid/widget/RemoteViews;-><init>(Ljava/util/Map;)V

    .line 133
    .line 134
    .line 135
    return-object p1
.end method

.method public static getHasNewStory(Landroid/app/people/PeopleSpaceTile;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda3;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-direct {v0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda3;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    return v1
.end method

.method public static getPersonIconBitmap(Landroid/content/Context;IZLandroid/graphics/drawable/Icon;Ljava/lang/String;IZZ)Landroid/graphics/Bitmap;
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    .line 4
    if-nez p3, :cond_0

    .line 5
    .line 6
    const v2, 0x7f08080d

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter(F)Landroid/graphics/ColorFilter;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0

    .line 29
    :cond_0
    new-instance v2, Lcom/android/systemui/people/PeopleStoryIconFactory;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const/4 v4, 0x0

    .line 36
    invoke-static {p0, v4}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;Z)Landroid/util/IconDrawableFactory;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    move v5, p1

    .line 41
    invoke-direct {v2, p0, v3, v4, p1}, Lcom/android/systemui/people/PeopleStoryIconFactory;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/util/IconDrawableFactory;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    new-instance v5, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;

    .line 53
    .line 54
    invoke-direct {v5, v0, v3}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable21;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;

    .line 58
    .line 59
    :try_start_0
    iget-object v3, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 60
    .line 61
    const/16 v4, 0x80

    .line 62
    .line 63
    move-object/from16 v6, p4

    .line 64
    .line 65
    move/from16 v7, p5

    .line 66
    .line 67
    invoke-virtual {v3, v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget-object v4, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-static {v4, v3}, Lcom/android/settingslib/Utils;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    .line 74
    .line 75
    .line 76
    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    iget-object v3, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 79
    .line 80
    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    :goto_0
    move-object v6, v3

    .line 85
    iget v7, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mIconBitmapSize:I

    .line 86
    .line 87
    iget v8, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mImportantConversationColor:I

    .line 88
    .line 89
    iget v10, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mIconSize:F

    .line 90
    .line 91
    iget v11, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mDensity:F

    .line 92
    .line 93
    iget v12, v2, Lcom/android/systemui/people/PeopleStoryIconFactory;->mAccentColor:I

    .line 94
    .line 95
    move-object v4, v0

    .line 96
    move/from16 v9, p6

    .line 97
    .line 98
    move/from16 v13, p2

    .line 99
    .line 100
    invoke-direct/range {v4 .. v13}, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;-><init>(Landroidx/core/graphics/drawable/RoundedBitmapDrawable;Landroid/graphics/drawable/Drawable;IIZFFIZ)V

    .line 101
    .line 102
    .line 103
    if-eqz p7, :cond_1

    .line 104
    .line 105
    invoke-static {v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter(F)Landroid/graphics/ColorFilter;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/android/systemui/people/PeopleStoryIconFactory$PeopleStoryIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0
.end method

.method public static isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getNotificationPolicyState()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    and-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    and-int/lit8 v2, v1, 0x4

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->isImportantConversation()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    return v0

    .line 25
    :cond_2
    and-int/lit8 v2, v1, 0x8

    .line 26
    .line 27
    const/high16 v3, 0x3f800000    # 1.0f

    .line 28
    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getContactAffinity()F

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    cmpl-float v2, v2, v3

    .line 36
    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    return v0

    .line 40
    :cond_3
    and-int/lit8 v1, v1, 0x10

    .line 41
    .line 42
    if-eqz v1, :cond_5

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getContactAffinity()F

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/high16 v2, 0x3f000000    # 0.5f

    .line 49
    .line 50
    cmpl-float v1, v1, v2

    .line 51
    .line 52
    if-eqz v1, :cond_4

    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->getContactAffinity()F

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    cmpl-float v1, v1, v3

    .line 59
    .line 60
    if-nez v1, :cond_5

    .line 61
    .line 62
    :cond_4
    return v0

    .line 63
    :cond_5
    invoke-virtual {p0}, Landroid/app/people/PeopleSpaceTile;->canBypassDnd()Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    xor-int/lit8 p0, p0, 0x1

    .line 68
    .line 69
    return p0
.end method

.method public static setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a03ae

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/16 p1, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const v0, 0x7f0a03ab

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    const v0, 0x7f0a03ac

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a03ad

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    invoke-virtual {p0, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static setPunctuationBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x7f0a083b

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/16 p1, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const v0, 0x7f0a0835

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    const v0, 0x7f0a0836

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    const v0, 0x7f0a0837

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    const v0, 0x7f0a0838

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    const v0, 0x7f0a0839

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    const v0, 0x7f0a083a

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final createDndRemoteViews()Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v7, Landroid/widget/RemoteViews;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v3, 0x2

    .line 12
    const/4 v4, 0x1

    .line 13
    iget v5, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    .line 14
    .line 15
    if-eq v5, v4, :cond_1

    .line 16
    .line 17
    if-eq v5, v3, :cond_0

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutSmallByHeight()I

    .line 20
    .line 21
    .line 22
    move-result v6

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const v6, 0x7f0d027d

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const v6, 0x7f0d027c

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-direct {v7, v0, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    const v0, 0x7f07007e

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const v6, 0x7f070810

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v6}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 45
    .line 46
    .line 47
    move-result v6

    .line 48
    const v8, 0x7f130c88

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v8

    .line 55
    const v9, 0x7f0a0bc0

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v9, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    if-ne v5, v3, :cond_2

    .line 62
    .line 63
    const v3, 0x7f0701df

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const v3, 0x7f0701e0

    .line 68
    .line 69
    .line 70
    :goto_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    invoke-virtual {v10, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    const/4 v11, 0x0

    .line 79
    invoke-virtual {v7, v9, v11, v10}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 83
    .line 84
    .line 85
    move-result v10

    .line 86
    const-string/jumbo v11, "setMaxLines"

    .line 87
    .line 88
    .line 89
    iget v12, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    .line 90
    .line 91
    const/16 v13, 0x10

    .line 92
    .line 93
    if-ne v5, v4, :cond_3

    .line 94
    .line 95
    sub-int/2addr v12, v13

    .line 96
    div-int/2addr v12, v10

    .line 97
    invoke-virtual {v7, v9, v11, v12}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_7

    .line 101
    .line 102
    :cond_3
    int-to-float v4, v13

    .line 103
    iget v9, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    .line 104
    .line 105
    mul-float/2addr v4, v9

    .line 106
    float-to-int v13, v4

    .line 107
    const/16 v4, 0xe

    .line 108
    .line 109
    int-to-float v4, v4

    .line 110
    mul-float/2addr v4, v9

    .line 111
    float-to-int v4, v4

    .line 112
    if-nez v5, :cond_4

    .line 113
    .line 114
    const v14, 0x7f070cf6

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_4
    const v14, 0x7f0705a0

    .line 119
    .line 120
    .line 121
    :goto_2
    invoke-virtual {v1, v14}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    add-int/lit8 v12, v12, -0x20

    .line 126
    .line 127
    sub-int/2addr v12, v14

    .line 128
    const v15, 0x7f070a8f

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v15}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 132
    .line 133
    .line 134
    move-result v15

    .line 135
    move/from16 v16, v14

    .line 136
    .line 137
    iget v14, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    .line 138
    .line 139
    add-int/lit8 v1, v14, -0x20

    .line 140
    .line 141
    sub-int v0, v12, v0

    .line 142
    .line 143
    mul-int/lit8 v15, v15, 0x2

    .line 144
    .line 145
    move/from16 v17, v4

    .line 146
    .line 147
    sub-int v4, v0, v15

    .line 148
    .line 149
    :try_start_0
    new-instance v0, Landroid/widget/TextView;

    .line 150
    .line 151
    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    .line 153
    .line 154
    move/from16 v18, v13

    .line 155
    .line 156
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 157
    .line 158
    .line 159
    move-result-object v13

    .line 160
    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    const/4 v13, 0x0

    .line 165
    invoke-virtual {v0, v13, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 166
    .line 167
    .line 168
    const v3, 0x10301ad

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 179
    .line 180
    .line 181
    move-result v3

    .line 182
    int-to-float v1, v1

    .line 183
    mul-float/2addr v1, v9

    .line 184
    float-to-int v1, v1

    .line 185
    const/4 v13, 0x0

    .line 186
    invoke-static {v8, v13, v3, v0, v1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0, v13}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    .line 195
    .line 196
    .line 197
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    goto :goto_4

    .line 199
    :catch_0
    move-exception v0

    .line 200
    goto :goto_3

    .line 201
    :catch_1
    move-exception v0

    .line 202
    move/from16 v18, v13

    .line 203
    .line 204
    :goto_3
    const-string v1, "Could not create static layout: "

    .line 205
    .line 206
    const-string v3, "PeopleTileView"

    .line 207
    .line 208
    invoke-static {v1, v0, v3}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    const/4 v0, 0x0

    .line 212
    :goto_4
    if-nez v0, :cond_5

    .line 213
    .line 214
    const v0, 0x7fffffff

    .line 215
    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_5
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getHeight()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    int-to-float v0, v0

    .line 223
    div-float/2addr v0, v9

    .line 224
    float-to-int v0, v0

    .line 225
    :goto_5
    const v13, 0x7f0a0801

    .line 226
    .line 227
    .line 228
    if-gt v0, v4, :cond_6

    .line 229
    .line 230
    const/4 v1, 0x2

    .line 231
    if-ne v5, v1, :cond_6

    .line 232
    .line 233
    sub-int/2addr v12, v0

    .line 234
    sub-int/2addr v12, v15

    .line 235
    const/4 v0, 0x0

    .line 236
    const v1, 0x7f0a0bc0

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 240
    .line 241
    .line 242
    div-int/2addr v4, v10

    .line 243
    invoke-virtual {v7, v1, v11, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 244
    .line 245
    .line 246
    const/4 v0, 0x0

    .line 247
    invoke-virtual {v7, v13, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    add-int/lit8 v14, v14, -0x20

    .line 251
    .line 252
    invoke-static {v14, v12}, Ljava/lang/Math;->min(II)I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    const/high16 v1, 0x41200000    # 10.0f

    .line 257
    .line 258
    mul-float/2addr v9, v1

    .line 259
    float-to-int v1, v9

    .line 260
    invoke-static {v0, v1, v6}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    const/high16 v2, 0x1020000

    .line 265
    .line 266
    move-object v1, v7

    .line 267
    move/from16 v3, v18

    .line 268
    .line 269
    move/from16 v4, v17

    .line 270
    .line 271
    move/from16 v5, v18

    .line 272
    .line 273
    move/from16 v6, v18

    .line 274
    .line 275
    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 276
    .line 277
    .line 278
    move/from16 v1, v16

    .line 279
    .line 280
    int-to-float v1, v1

    .line 281
    const/4 v2, 0x1

    .line 282
    invoke-virtual {v7, v13, v1, v2}, Landroid/widget/RemoteViews;->setViewLayoutWidth(IFI)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v7, v13, v1, v2}, Landroid/widget/RemoteViews;->setViewLayoutHeight(IFI)V

    .line 286
    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_6
    if-eqz v5, :cond_7

    .line 290
    .line 291
    new-instance v7, Landroid/widget/RemoteViews;

    .line 292
    .line 293
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    const v1, 0x7f0d0279

    .line 298
    .line 299
    .line 300
    invoke-direct {v7, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 301
    .line 302
    .line 303
    :cond_7
    move-object/from16 v1, p0

    .line 304
    .line 305
    invoke-virtual {v1, v7}, Lcom/android/systemui/people/PeopleTileViewHelper;->getMaxAvatarSize(Landroid/widget/RemoteViews;)I

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    const v1, 0x7f0a0689

    .line 310
    .line 311
    .line 312
    const/16 v2, 0x8

    .line 313
    .line 314
    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 315
    .line 316
    .line 317
    const v1, 0x7f0a0715

    .line 318
    .line 319
    .line 320
    invoke-virtual {v7, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v7, v13, v8}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 324
    .line 325
    .line 326
    :goto_6
    const/4 v1, 0x0

    .line 327
    invoke-virtual {v7, v13, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 328
    .line 329
    .line 330
    const v1, 0x7f080a4e

    .line 331
    .line 332
    .line 333
    invoke-virtual {v7, v13, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 334
    .line 335
    .line 336
    :goto_7
    new-instance v1, Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;

    .line 337
    .line 338
    invoke-direct {v1, v7, v0}, Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;-><init>(Landroid/widget/RemoteViews;I)V

    .line 339
    .line 340
    .line 341
    return-object v1
.end method

.method public final createStatusRemoteViews(Landroid/app/people/ConversationStatus;)Landroid/widget/RemoteViews;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/widget/RemoteViews;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    const/4 v4, 0x2

    .line 12
    iget v5, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    .line 13
    .line 14
    const/4 v6, 0x1

    .line 15
    if-eq v5, v6, :cond_1

    .line 16
    .line 17
    if-eq v5, v4, :cond_0

    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutSmallByHeight()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const v7, 0x7f0d0274

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const v7, 0x7f0d0276

    .line 29
    .line 30
    .line 31
    :goto_0
    invoke-direct {v1, v3, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->setViewForContentLayout(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 35
    .line 36
    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getDescription()Ljava/lang/CharSequence;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const v8, 0x7f1301a9

    .line 46
    .line 47
    .line 48
    const v9, 0x7f1311fb

    .line 49
    .line 50
    .line 51
    const-string v10, ""

    .line 52
    .line 53
    const v11, 0x7f13069f

    .line 54
    .line 55
    .line 56
    if-eqz v7, :cond_2

    .line 57
    .line 58
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    packed-switch v3, :pswitch_data_0

    .line 63
    .line 64
    .line 65
    move-object v3, v10

    .line 66
    goto :goto_1

    .line 67
    :pswitch_0
    const v3, 0x7f1311b4

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    goto :goto_1

    .line 75
    :pswitch_1
    const v3, 0x7f130a7b

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    goto :goto_1

    .line 83
    :pswitch_2
    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    goto :goto_1

    .line 88
    :pswitch_3
    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    goto :goto_1

    .line 93
    :pswitch_4
    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    goto :goto_1

    .line 98
    :pswitch_5
    const v3, 0x7f130be8

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    goto :goto_1

    .line 106
    :pswitch_6
    const v3, 0x7f130193

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    goto :goto_1

    .line 114
    :pswitch_7
    const v3, 0x7f13021f

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPredefinedIconVisible(Landroid/widget/RemoteViews;)V

    .line 122
    .line 123
    .line 124
    const v7, 0x7f0a0bc0

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v7, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    const/16 v13, 0x8

    .line 135
    .line 136
    if-eq v12, v6, :cond_3

    .line 137
    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    .line 139
    .line 140
    .line 141
    move-result v12

    .line 142
    if-ne v12, v13, :cond_4

    .line 143
    .line 144
    :cond_3
    const-string/jumbo v12, "\ud83c\udf82"

    .line 145
    .line 146
    .line 147
    invoke-static {v1, v12}, Lcom/android/systemui/people/PeopleTileViewHelper;->setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    .line 148
    .line 149
    .line 150
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getIcon()Landroid/graphics/drawable/Icon;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    const/4 v14, 0x0

    .line 155
    const-string/jumbo v15, "setTextColor"

    .line 156
    .line 157
    .line 158
    const v8, 0x7f0a0715

    .line 159
    .line 160
    .line 161
    if-eqz v12, :cond_6

    .line 162
    .line 163
    const v9, 0x7f0a0948

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v9, v14}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 167
    .line 168
    .line 169
    const v9, 0x7f0a0ad9

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v9, v12}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 173
    .line 174
    .line 175
    if-ne v5, v4, :cond_5

    .line 176
    .line 177
    const/16 v3, 0x50

    .line 178
    .line 179
    const v9, 0x7f0a0297

    .line 180
    .line 181
    .line 182
    const-string/jumbo v14, "setGravity"

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v9, v14, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v1, v8, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 189
    .line 190
    .line 191
    const v3, 0x1010036

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v7, v15, v3}, Landroid/widget/RemoteViews;->setColorAttr(ILjava/lang/String;I)V

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_5
    if-ne v5, v6, :cond_7

    .line 199
    .line 200
    invoke-virtual {v1, v7, v13}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v8, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_6
    const v3, 0x1010038

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v7, v15, v3}, Landroid/widget/RemoteViews;->setColorAttr(ILjava/lang/String;I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v0, v1, v14}, Lcom/android/systemui/people/PeopleTileViewHelper;->setMaxLines(Landroid/widget/RemoteViews;Z)V

    .line 214
    .line 215
    .line 216
    :cond_7
    :goto_2
    const v3, 0x7f070079

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->setAvailabilityDotPadding(Landroid/widget/RemoteViews;I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    packed-switch v3, :pswitch_data_1

    .line 227
    .line 228
    .line 229
    const v3, 0x7f080a36

    .line 230
    .line 231
    .line 232
    goto :goto_3

    .line 233
    :pswitch_8
    const v3, 0x7f080907

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :pswitch_9
    const v3, 0x7f080949

    .line 238
    .line 239
    .line 240
    goto :goto_3

    .line 241
    :pswitch_a
    const v3, 0x7f080a3c

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :pswitch_b
    const v3, 0x7f080af4

    .line 246
    .line 247
    .line 248
    goto :goto_3

    .line 249
    :pswitch_c
    const v3, 0x7f080a11

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :pswitch_d
    const v3, 0x7f080a2f

    .line 254
    .line 255
    .line 256
    goto :goto_3

    .line 257
    :pswitch_e
    const v3, 0x7f080837

    .line 258
    .line 259
    .line 260
    goto :goto_3

    .line 261
    :pswitch_f
    const v3, 0x7f080828

    .line 262
    .line 263
    .line 264
    :goto_3
    const v9, 0x7f0a0801

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v9, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 268
    .line 269
    .line 270
    iget-object v0, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 271
    .line 272
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 273
    .line 274
    .line 275
    move-result-object v3

    .line 276
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getDescription()Ljava/lang/CharSequence;

    .line 277
    .line 278
    .line 279
    move-result-object v13

    .line 280
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 281
    .line 282
    .line 283
    move-result v13

    .line 284
    if-nez v13, :cond_8

    .line 285
    .line 286
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getDescription()Ljava/lang/CharSequence;

    .line 287
    .line 288
    .line 289
    move-result-object v10

    .line 290
    goto :goto_4

    .line 291
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/app/people/ConversationStatus;->getActivity()I

    .line 292
    .line 293
    .line 294
    move-result v13

    .line 295
    packed-switch v13, :pswitch_data_2

    .line 296
    .line 297
    .line 298
    goto :goto_4

    .line 299
    :pswitch_10
    const v10, 0x7f1311b5

    .line 300
    .line 301
    .line 302
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v3

    .line 306
    invoke-virtual {v2, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v10

    .line 310
    goto :goto_4

    .line 311
    :pswitch_11
    const v10, 0x7f130a7c

    .line 312
    .line 313
    .line 314
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v3

    .line 318
    invoke-virtual {v2, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v10

    .line 322
    goto :goto_4

    .line 323
    :pswitch_12
    invoke-virtual {v2, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v10

    .line 327
    goto :goto_4

    .line 328
    :pswitch_13
    const v3, 0x7f1311fb

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v10

    .line 335
    goto :goto_4

    .line 336
    :pswitch_14
    const v3, 0x7f1301a9

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v10

    .line 343
    goto :goto_4

    .line 344
    :pswitch_15
    const v10, 0x7f130be9

    .line 345
    .line 346
    .line 347
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    invoke-virtual {v2, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v10

    .line 355
    goto :goto_4

    .line 356
    :pswitch_16
    const v10, 0x7f130194

    .line 357
    .line 358
    .line 359
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v3

    .line 363
    invoke-virtual {v2, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v10

    .line 367
    goto :goto_4

    .line 368
    :pswitch_17
    const v10, 0x7f130220

    .line 369
    .line 370
    .line 371
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v3

    .line 375
    invoke-virtual {v2, v10, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v10

    .line 379
    :goto_4
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    filled-new-array {v0, v10}, [Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    const v3, 0x7f130be7

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    if-eqz v5, :cond_c

    .line 395
    .line 396
    if-eq v5, v6, :cond_a

    .line 397
    .line 398
    if-eq v5, v4, :cond_9

    .line 399
    .line 400
    goto :goto_6

    .line 401
    :cond_9
    invoke-virtual {v1, v7, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 402
    .line 403
    .line 404
    goto :goto_6

    .line 405
    :cond_a
    if-nez v12, :cond_b

    .line 406
    .line 407
    goto :goto_5

    .line 408
    :cond_b
    move v7, v8

    .line 409
    :goto_5
    invoke-virtual {v1, v7, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 410
    .line 411
    .line 412
    goto :goto_6

    .line 413
    :cond_c
    invoke-virtual {v1, v9, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 414
    .line 415
    .line 416
    :goto_6
    return-object v1

    .line 417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public final decorateBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;
    .locals 3

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getDoubleEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    invoke-static {p1, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPunctuationBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getDoublePunctuation(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-static {p1, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setEmojiBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1, p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPunctuationBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    return-object p1
.end method

.method public getDoubleEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    .line 1
    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->EMOJI_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    new-instance v4, Landroid/util/Pair;

    .line 32
    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    invoke-interface {p1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    const/4 p1, 0x2

    .line 60
    const/4 v2, 0x0

    .line 61
    if-ge p0, p1, :cond_1

    .line 62
    .line 63
    return-object v2

    .line 64
    :cond_1
    const/4 p0, 0x1

    .line 65
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-ge p0, p1, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Landroid/util/Pair;

    .line 76
    .line 77
    add-int/lit8 v3, p0, -0x1

    .line 78
    .line 79
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    check-cast v4, Landroid/util/Pair;

    .line 84
    .line 85
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 86
    .line 87
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 88
    .line 89
    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_2

    .line 108
    .line 109
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    check-cast p0, Ljava/lang/CharSequence;

    .line 114
    .line 115
    return-object p0

    .line 116
    :cond_2
    add-int/lit8 p0, p0, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_3
    return-object v2
.end method

.method public getDoublePunctuation(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->ANY_DOUBLE_MARK_PATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->MIXED_MARK_PATTERN:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    const-string p0, "!?"

    .line 28
    .line 29
    return-object p0

    .line 30
    :cond_1
    sget-object p0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_QUESTION_PATTERN:Ljava/util/regex/Pattern;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const-string v1, "!"

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    return-object v1

    .line 45
    :cond_2
    sget-object v0, Lcom/android/systemui/people/PeopleTileViewHelper;->DOUBLE_EXCLAMATION_PATTERN:Ljava/util/regex/Pattern;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    const-string v2, "?"

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    return-object v2

    .line 60
    :cond_3
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-ge p0, p1, :cond_4

    .line 69
    .line 70
    return-object v2

    .line 71
    :cond_4
    return-object v1
.end method

.method public final getLayoutSmallByHeight()I
    .locals 1

    .line 1
    const v0, 0x7f070cfa

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    .line 9
    .line 10
    if-lt p0, v0, :cond_0

    .line 11
    .line 12
    const p0, 0x7f0d0279

    .line 13
    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    const p0, 0x7f0d027a

    .line 17
    .line 18
    .line 19
    return p0
.end method

.method public final getLineHeightFromResource(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {v1, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 18
    .line 19
    .line 20
    const p1, 0x10301ad

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineHeight()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    int-to-float p1, p1

    .line 31
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    div-float/2addr p1, p0

    .line 34
    float-to-int p0, p1

    .line 35
    return p0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v1, "Could not create text view: "

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "PeopleTileView"

    .line 52
    .line 53
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    const p1, 0x7f0701e0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    return p0
.end method

.method public final getMaxAvatarSize(Landroid/widget/RemoteViews;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const v0, 0x7f07007d

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const v2, 0x7f0d0275

    .line 13
    .line 14
    .line 15
    const v3, 0x7f070811

    .line 16
    .line 17
    .line 18
    if-ne p1, v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0

    .line 25
    :cond_0
    const v2, 0x7f0d0276

    .line 26
    .line 27
    .line 28
    if-ne p1, v2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    return p0

    .line 35
    :cond_1
    const v0, 0x7f0d0279

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mWidth:I

    .line 39
    .line 40
    iget v4, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    .line 41
    .line 42
    if-ne p1, v0, :cond_2

    .line 43
    .line 44
    const v0, 0x7f07095b

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/16 v1, 0x12

    .line 52
    .line 53
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    add-int/2addr v0, v1

    .line 58
    sub-int v0, v4, v0

    .line 59
    .line 60
    add-int/lit8 v1, v2, -0x8

    .line 61
    .line 62
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    :cond_2
    const v0, 0x7f0d027a

    .line 67
    .line 68
    .line 69
    if-ne p1, v0, :cond_3

    .line 70
    .line 71
    add-int/lit8 v0, v4, -0xa

    .line 72
    .line 73
    add-int/lit8 v1, v2, -0x10

    .line 74
    .line 75
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    :cond_3
    const v0, 0x7f0d0273

    .line 80
    .line 81
    .line 82
    const v5, 0x7f0701df

    .line 83
    .line 84
    .line 85
    if-ne p1, v0, :cond_4

    .line 86
    .line 87
    invoke-virtual {p0, v5}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    mul-int/lit8 p1, p1, 0x3

    .line 92
    .line 93
    add-int/lit8 p1, p1, 0x3e

    .line 94
    .line 95
    sub-int/2addr v4, p1

    .line 96
    invoke-virtual {p0, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    invoke-static {v4, p0}, Ljava/lang/Math;->min(II)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    return p0

    .line 105
    :cond_4
    const v0, 0x7f0d0274

    .line 106
    .line 107
    .line 108
    if-ne p1, v0, :cond_5

    .line 109
    .line 110
    invoke-virtual {p0, v5}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    mul-int/lit8 p1, p1, 0x3

    .line 115
    .line 116
    add-int/lit8 p1, p1, 0x4c

    .line 117
    .line 118
    sub-int/2addr v4, p1

    .line 119
    invoke-virtual {p0, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    invoke-static {v4, p0}, Ljava/lang/Math;->min(II)I

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    return p0

    .line 128
    :cond_5
    const v0, 0x7f0d0271

    .line 129
    .line 130
    .line 131
    if-ne p1, v0, :cond_6

    .line 132
    .line 133
    const p1, 0x7f070958

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    add-int/lit8 p1, p1, 0x1c

    .line 141
    .line 142
    invoke-virtual {p0, v5}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    add-int/2addr v0, p1

    .line 147
    add-int/lit8 v0, v0, 0x10

    .line 148
    .line 149
    add-int/lit8 v0, v0, 0xa

    .line 150
    .line 151
    add-int/lit8 v0, v0, 0x10

    .line 152
    .line 153
    sub-int/2addr v4, v0

    .line 154
    add-int/lit8 v2, v2, -0x1c

    .line 155
    .line 156
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 161
    .line 162
    invoke-static {p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_7

    .line 167
    .line 168
    iget p1, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    .line 169
    .line 170
    if-eqz p1, :cond_7

    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createDndRemoteViews()Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iget v1, p1, Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;->mAvatarSize:I

    .line 177
    .line 178
    :cond_7
    const p1, 0x7f070810

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, p1}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 182
    .line 183
    .line 184
    move-result p0

    .line 185
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    .line 186
    .line 187
    .line 188
    move-result p0

    .line 189
    return p0
.end method

.method public final getSizeInDp(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iget p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    .line 12
    .line 13
    div-float/2addr p1, p0

    .line 14
    float-to-int p0, p1

    .line 15
    return p0
.end method

.method public getViews()Landroid/widget/RemoteViews;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v3, 0x8

    .line 6
    .line 7
    const-string v4, "PeopleTileView"

    .line 8
    .line 9
    iget-object v5, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 10
    .line 11
    iget-object v6, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    if-eqz v5, :cond_25

    .line 14
    .line 15
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->isPackageSuspended()Z

    .line 16
    .line 17
    .line 18
    move-result v7

    .line 19
    if-nez v7, :cond_25

    .line 20
    .line 21
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->isUserQuieted()Z

    .line 22
    .line 23
    .line 24
    move-result v7

    .line 25
    if-eqz v7, :cond_0

    .line 26
    .line 27
    goto/16 :goto_10

    .line 28
    .line 29
    :cond_0
    invoke-static {v5}, Lcom/android/systemui/people/PeopleTileViewHelper;->isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    if-eqz v7, :cond_1

    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createDndRemoteViews()Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v0, v0, Lcom/android/systemui/people/PeopleTileViewHelper$RemoteViewsAndSizes;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 40
    .line 41
    goto/16 :goto_12

    .line 42
    .line 43
    :cond_1
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getNotificationCategory()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    const-string v8, "missed_call"

    .line 48
    .line 49
    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v7

    .line 53
    const v8, 0x7f130be6

    .line 54
    .line 55
    .line 56
    const/4 v9, 0x2

    .line 57
    const v10, 0x7f0a0bc0

    .line 58
    .line 59
    .line 60
    const v11, 0x7f0a0801

    .line 61
    .line 62
    .line 63
    iget v12, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    .line 64
    .line 65
    const v13, 0x7f0a0689

    .line 66
    .line 67
    .line 68
    const-string/jumbo v14, "setTextColor"

    .line 69
    .line 70
    .line 71
    if-eqz v7, :cond_6

    .line 72
    .line 73
    new-instance v7, Landroid/widget/RemoteViews;

    .line 74
    .line 75
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v15

    .line 79
    if-eq v12, v0, :cond_3

    .line 80
    .line 81
    if-eq v12, v9, :cond_2

    .line 82
    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutSmallByHeight()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const v0, 0x7f0d0274

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    const v0, 0x7f0d0276

    .line 93
    .line 94
    .line 95
    :goto_0
    invoke-direct {v7, v15, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v7}, Lcom/android/systemui/people/PeopleTileViewHelper;->setViewForContentLayout(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v7}, Lcom/android/systemui/people/PeopleTileViewHelper;->setPredefinedIconVisible(Landroid/widget/RemoteViews;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7, v10, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v7, v13, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v7, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->setMaxLines(Landroid/widget/RemoteViews;Z)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getNotificationContent()Ljava/lang/CharSequence;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v7, v10, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v6, v8, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    if-nez v12, :cond_4

    .line 133
    .line 134
    move v2, v11

    .line 135
    goto :goto_1

    .line 136
    :cond_4
    move v2, v10

    .line 137
    :goto_1
    invoke-virtual {v7, v2, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    const v0, 0x1010543

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, v10, v14, v0}, Landroid/widget/RemoteViews;->setColorAttr(ILjava/lang/String;I)V

    .line 144
    .line 145
    .line 146
    const-string/jumbo v2, "setColorFilter"

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7, v11, v2, v0}, Landroid/widget/RemoteViews;->setColorAttr(ILjava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    const v0, 0x7f080a38

    .line 153
    .line 154
    .line 155
    invoke-virtual {v7, v11, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 156
    .line 157
    .line 158
    if-ne v12, v9, :cond_5

    .line 159
    .line 160
    const-string/jumbo v0, "setGravity"

    .line 161
    .line 162
    .line 163
    const/16 v2, 0x50

    .line 164
    .line 165
    const v8, 0x7f0a0297

    .line 166
    .line 167
    .line 168
    invoke-virtual {v7, v8, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 169
    .line 170
    .line 171
    const v0, 0x7f07059f

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7, v11, v0}, Landroid/widget/RemoteViews;->setViewLayoutHeightDimen(II)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7, v11, v0}, Landroid/widget/RemoteViews;->setViewLayoutWidthDimen(II)V

    .line 178
    .line 179
    .line 180
    :cond_5
    const v0, 0x7f070077

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v7, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setAvailabilityDotPadding(Landroid/widget/RemoteViews;I)V

    .line 184
    .line 185
    .line 186
    move-object v0, v7

    .line 187
    goto/16 :goto_12

    .line 188
    .line 189
    :cond_6
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getNotificationKey()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    if-eqz v0, :cond_14

    .line 194
    .line 195
    new-instance v7, Landroid/widget/RemoteViews;

    .line 196
    .line 197
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    const/4 v13, 0x1

    .line 202
    if-eq v12, v13, :cond_8

    .line 203
    .line 204
    if-eq v12, v9, :cond_7

    .line 205
    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutSmallByHeight()I

    .line 207
    .line 208
    .line 209
    move-result v13

    .line 210
    goto :goto_2

    .line 211
    :cond_7
    const v13, 0x7f0d0273

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :cond_8
    const v13, 0x7f0d0276

    .line 216
    .line 217
    .line 218
    :goto_2
    invoke-direct {v7, v0, v13}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v7}, Lcom/android/systemui/people/PeopleTileViewHelper;->setViewForContentLayout(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getNotificationSender()Ljava/lang/CharSequence;

    .line 225
    .line 226
    .line 227
    move-result-object v13

    .line 228
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getNotificationDataUri()Landroid/net/Uri;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    const v15, 0x7f0a04bb

    .line 233
    .line 234
    .line 235
    if-eqz v0, :cond_9

    .line 236
    .line 237
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 238
    .line 239
    .line 240
    move-result-object v8

    .line 241
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    const v9, 0x7f130be5

    .line 246
    .line 247
    .line 248
    invoke-virtual {v6, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v8

    .line 252
    invoke-virtual {v7, v15, v8}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v7, v15, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v7, v10, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 259
    .line 260
    .line 261
    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 262
    .line 263
    .line 264
    move-result-object v9

    .line 265
    invoke-static {v9, v0}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    new-instance v9, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda4;

    .line 270
    .line 271
    invoke-direct {v9, v1}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/people/PeopleTileViewHelper;)V

    .line 272
    .line 273
    .line 274
    invoke-static {v0, v9}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-static {v0}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-virtual {v7, v15, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .line 284
    .line 285
    goto/16 :goto_6

    .line 286
    .line 287
    :catch_0
    move-exception v0

    .line 288
    new-instance v9, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    const-string v14, "Could not decode image: "

    .line 291
    .line 292
    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    .line 304
    .line 305
    invoke-virtual {v7, v10, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v7, v10, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v7, v15, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 312
    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_9
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    xor-int/lit8 v0, v0, 0x1

    .line 320
    .line 321
    invoke-virtual {v1, v7, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setMaxLines(Landroid/widget/RemoteViews;Z)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getNotificationContent()Ljava/lang/CharSequence;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    if-eqz v13, :cond_a

    .line 329
    .line 330
    move-object v2, v13

    .line 331
    goto :goto_3

    .line 332
    :cond_a
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 333
    .line 334
    .line 335
    move-result-object v2

    .line 336
    :goto_3
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-virtual {v6, v8, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    if-nez v12, :cond_b

    .line 345
    .line 346
    move v8, v11

    .line 347
    goto :goto_4

    .line 348
    :cond_b
    move v8, v10

    .line 349
    :goto_4
    invoke-virtual {v7, v8, v2}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v1, v7, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->decorateBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    .line 353
    .line 354
    .line 355
    const v0, 0x1010036

    .line 356
    .line 357
    .line 358
    invoke-virtual {v7, v10, v14, v0}, Landroid/widget/RemoteViews;->setColorAttr(ILjava/lang/String;I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getNotificationContent()Ljava/lang/CharSequence;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-virtual {v7, v10, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 366
    .line 367
    .line 368
    if-ne v12, v9, :cond_c

    .line 369
    .line 370
    const v16, 0x7f0a0715

    .line 371
    .line 372
    .line 373
    const/16 v17, 0x0

    .line 374
    .line 375
    const/16 v18, 0x0

    .line 376
    .line 377
    const/16 v19, 0x0

    .line 378
    .line 379
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    const v2, 0x7f070030

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 387
    .line 388
    .line 389
    move-result v20

    .line 390
    move v2, v15

    .line 391
    move-object v15, v7

    .line 392
    invoke-virtual/range {v15 .. v20}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 393
    .line 394
    .line 395
    goto :goto_5

    .line 396
    :cond_c
    move v2, v15

    .line 397
    :goto_5
    invoke-virtual {v7, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 398
    .line 399
    .line 400
    const v0, 0x7f08097e

    .line 401
    .line 402
    .line 403
    invoke-virtual {v7, v11, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 404
    .line 405
    .line 406
    :goto_6
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getMessagesCount()I

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    const/4 v2, 0x1

    .line 411
    if-le v0, v2, :cond_12

    .line 412
    .line 413
    if-ne v12, v2, :cond_f

    .line 414
    .line 415
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    const v2, 0x7f0700b4

    .line 420
    .line 421
    .line 422
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 423
    .line 424
    .line 425
    move-result v0

    .line 426
    const v16, 0x7f0a0715

    .line 427
    .line 428
    .line 429
    iget-boolean v2, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mIsLeftToRight:Z

    .line 430
    .line 431
    if-eqz v2, :cond_d

    .line 432
    .line 433
    const/4 v8, 0x0

    .line 434
    move/from16 v17, v8

    .line 435
    .line 436
    goto :goto_7

    .line 437
    :cond_d
    move/from16 v17, v0

    .line 438
    .line 439
    :goto_7
    const/16 v18, 0x0

    .line 440
    .line 441
    if-eqz v2, :cond_e

    .line 442
    .line 443
    goto :goto_8

    .line 444
    :cond_e
    const/4 v0, 0x0

    .line 445
    :goto_8
    move/from16 v19, v0

    .line 446
    .line 447
    const/16 v20, 0x0

    .line 448
    .line 449
    move-object v15, v7

    .line 450
    invoke-virtual/range {v15 .. v20}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 451
    .line 452
    .line 453
    :cond_f
    const v0, 0x7f0a0689

    .line 454
    .line 455
    .line 456
    const/4 v2, 0x0

    .line 457
    invoke-virtual {v7, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getMessagesCount()I

    .line 461
    .line 462
    .line 463
    move-result v0

    .line 464
    const/4 v2, 0x6

    .line 465
    if-lt v0, v2, :cond_10

    .line 466
    .line 467
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    const v8, 0x7f130b1e

    .line 480
    .line 481
    .line 482
    invoke-virtual {v0, v8, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    goto :goto_9

    .line 487
    :cond_10
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 496
    .line 497
    .line 498
    move-result-object v2

    .line 499
    const/4 v8, 0x0

    .line 500
    invoke-virtual {v2, v8}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 501
    .line 502
    .line 503
    move-result-object v2

    .line 504
    iget-object v8, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mLocale:Ljava/util/Locale;

    .line 505
    .line 506
    invoke-virtual {v2, v8}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 507
    .line 508
    .line 509
    move-result v8

    .line 510
    if-nez v8, :cond_11

    .line 511
    .line 512
    iput-object v2, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mLocale:Ljava/util/Locale;

    .line 513
    .line 514
    invoke-static {v2}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    .line 515
    .line 516
    .line 517
    move-result-object v2

    .line 518
    iput-object v2, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mIntegerFormat:Ljava/text/NumberFormat;

    .line 519
    .line 520
    :cond_11
    iget-object v2, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mIntegerFormat:Ljava/text/NumberFormat;

    .line 521
    .line 522
    int-to-long v8, v0

    .line 523
    invoke-virtual {v2, v8, v9}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    :goto_9
    const v2, 0x7f0a0689

    .line 528
    .line 529
    .line 530
    invoke-virtual {v7, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 531
    .line 532
    .line 533
    if-nez v12, :cond_12

    .line 534
    .line 535
    invoke-virtual {v7, v11, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 536
    .line 537
    .line 538
    :cond_12
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 539
    .line 540
    .line 541
    move-result v0

    .line 542
    const v2, 0x7f0a0b4c

    .line 543
    .line 544
    .line 545
    if-nez v0, :cond_13

    .line 546
    .line 547
    const/4 v0, 0x0

    .line 548
    invoke-virtual {v7, v2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 549
    .line 550
    .line 551
    invoke-virtual {v7, v2, v13}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 552
    .line 553
    .line 554
    goto :goto_a

    .line 555
    :cond_13
    invoke-virtual {v7, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 556
    .line 557
    .line 558
    :goto_a
    const v0, 0x7f070077

    .line 559
    .line 560
    .line 561
    invoke-virtual {v1, v7, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->setAvailabilityDotPadding(Landroid/widget/RemoteViews;I)V

    .line 562
    .line 563
    .line 564
    move-object v2, v7

    .line 565
    goto/16 :goto_13

    .line 566
    .line 567
    :cond_14
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    if-nez v0, :cond_15

    .line 572
    .line 573
    new-array v0, v2, [Landroid/app/people/ConversationStatus;

    .line 574
    .line 575
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 576
    .line 577
    .line 578
    move-result-object v0

    .line 579
    goto :goto_b

    .line 580
    :cond_15
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 585
    .line 586
    .line 587
    move-result-object v0

    .line 588
    new-instance v2, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda0;

    .line 589
    .line 590
    invoke-direct {v2, v1}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/people/PeopleTileViewHelper;)V

    .line 591
    .line 592
    .line 593
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v0

    .line 605
    check-cast v0, Ljava/util/List;

    .line 606
    .line 607
    :goto_b
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 608
    .line 609
    .line 610
    move-result-object v2

    .line 611
    new-instance v7, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda3;

    .line 612
    .line 613
    invoke-direct {v7, v9}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda3;-><init>(I)V

    .line 614
    .line 615
    .line 616
    invoke-interface {v2, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 617
    .line 618
    .line 619
    move-result-object v2

    .line 620
    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    .line 625
    .line 626
    .line 627
    move-result v7

    .line 628
    if-eqz v7, :cond_16

    .line 629
    .line 630
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    check-cast v2, Landroid/app/people/ConversationStatus;

    .line 635
    .line 636
    goto :goto_c

    .line 637
    :cond_16
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getBirthdayText()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v2

    .line 641
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 642
    .line 643
    .line 644
    move-result v2

    .line 645
    if-nez v2, :cond_17

    .line 646
    .line 647
    new-instance v2, Landroid/app/people/ConversationStatus$Builder;

    .line 648
    .line 649
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getId()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v7

    .line 653
    const/4 v8, 0x1

    .line 654
    invoke-direct {v2, v7, v8}, Landroid/app/people/ConversationStatus$Builder;-><init>(Ljava/lang/String;I)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v2}, Landroid/app/people/ConversationStatus$Builder;->build()Landroid/app/people/ConversationStatus;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    goto :goto_c

    .line 662
    :cond_17
    const/4 v2, 0x0

    .line 663
    :goto_c
    if-eqz v2, :cond_18

    .line 664
    .line 665
    invoke-virtual {v1, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->createStatusRemoteViews(Landroid/app/people/ConversationStatus;)Landroid/widget/RemoteViews;

    .line 666
    .line 667
    .line 668
    move-result-object v0

    .line 669
    goto/16 :goto_12

    .line 670
    .line 671
    :cond_18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 672
    .line 673
    .line 674
    move-result v2

    .line 675
    if-nez v2, :cond_19

    .line 676
    .line 677
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    new-instance v2, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda1;

    .line 682
    .line 683
    invoke-direct {v2}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 684
    .line 685
    .line 686
    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    .line 687
    .line 688
    .line 689
    move-result-object v2

    .line 690
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    .line 691
    .line 692
    .line 693
    move-result-object v0

    .line 694
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v0

    .line 698
    check-cast v0, Landroid/app/people/ConversationStatus;

    .line 699
    .line 700
    invoke-virtual {v1, v0}, Lcom/android/systemui/people/PeopleTileViewHelper;->createStatusRemoteViews(Landroid/app/people/ConversationStatus;)Landroid/widget/RemoteViews;

    .line 701
    .line 702
    .line 703
    move-result-object v0

    .line 704
    goto/16 :goto_12

    .line 705
    .line 706
    :cond_19
    new-instance v0, Landroid/widget/RemoteViews;

    .line 707
    .line 708
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v2

    .line 712
    const/4 v7, 0x1

    .line 713
    if-eq v12, v7, :cond_1b

    .line 714
    .line 715
    if-eq v12, v9, :cond_1a

    .line 716
    .line 717
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLayoutSmallByHeight()I

    .line 718
    .line 719
    .line 720
    move-result v8

    .line 721
    goto :goto_d

    .line 722
    :cond_1a
    const v8, 0x7f0d0271

    .line 723
    .line 724
    .line 725
    goto :goto_d

    .line 726
    :cond_1b
    const v8, 0x7f0d0275

    .line 727
    .line 728
    .line 729
    :goto_d
    invoke-direct {v0, v2, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 730
    .line 731
    .line 732
    const v2, 0x7f0a0715

    .line 733
    .line 734
    .line 735
    const-string/jumbo v8, "setMaxLines"

    .line 736
    .line 737
    .line 738
    invoke-virtual {v0, v2, v8, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 739
    .line 740
    .line 741
    if-nez v12, :cond_1c

    .line 742
    .line 743
    const/4 v7, 0x0

    .line 744
    invoke-virtual {v0, v2, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {v0, v11, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 748
    .line 749
    .line 750
    const v7, 0x7f0a0689

    .line 751
    .line 752
    .line 753
    invoke-virtual {v0, v7, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 754
    .line 755
    .line 756
    :cond_1c
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 757
    .line 758
    .line 759
    move-result-object v7

    .line 760
    if-eqz v7, :cond_1d

    .line 761
    .line 762
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 763
    .line 764
    .line 765
    move-result-object v7

    .line 766
    invoke-virtual {v0, v2, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 767
    .line 768
    .line 769
    :cond_1d
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getLastInteractionTimestamp()J

    .line 770
    .line 771
    .line 772
    move-result-wide v9

    .line 773
    const-wide/16 v13, 0x0

    .line 774
    .line 775
    cmp-long v7, v9, v13

    .line 776
    .line 777
    if-nez v7, :cond_1e

    .line 778
    .line 779
    const-string v7, "Could not get valid last interaction"

    .line 780
    .line 781
    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    .line 783
    .line 784
    goto :goto_e

    .line 785
    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 786
    .line 787
    .line 788
    move-result-wide v13

    .line 789
    sub-long/2addr v13, v9

    .line 790
    invoke-static {v13, v14}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    .line 791
    .line 792
    .line 793
    move-result-object v7

    .line 794
    invoke-virtual {v7}, Ljava/time/Duration;->toDays()J

    .line 795
    .line 796
    .line 797
    move-result-wide v9

    .line 798
    const-wide/16 v13, 0x1

    .line 799
    .line 800
    cmp-long v9, v9, v13

    .line 801
    .line 802
    if-gtz v9, :cond_1f

    .line 803
    .line 804
    :goto_e
    const/4 v7, 0x0

    .line 805
    goto :goto_f

    .line 806
    :cond_1f
    invoke-virtual {v7}, Ljava/time/Duration;->toDays()J

    .line 807
    .line 808
    .line 809
    move-result-wide v9

    .line 810
    const-wide/16 v13, 0x7

    .line 811
    .line 812
    cmp-long v9, v9, v13

    .line 813
    .line 814
    if-gez v9, :cond_20

    .line 815
    .line 816
    invoke-virtual {v7}, Ljava/time/Duration;->toDays()J

    .line 817
    .line 818
    .line 819
    move-result-wide v9

    .line 820
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 821
    .line 822
    .line 823
    move-result-object v7

    .line 824
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 825
    .line 826
    .line 827
    move-result-object v7

    .line 828
    const v9, 0x7f130461

    .line 829
    .line 830
    .line 831
    invoke-virtual {v6, v9, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 832
    .line 833
    .line 834
    move-result-object v7

    .line 835
    goto :goto_f

    .line 836
    :cond_20
    invoke-virtual {v7}, Ljava/time/Duration;->toDays()J

    .line 837
    .line 838
    .line 839
    move-result-wide v9

    .line 840
    cmp-long v9, v9, v13

    .line 841
    .line 842
    if-nez v9, :cond_21

    .line 843
    .line 844
    const v7, 0x7f130c5b

    .line 845
    .line 846
    .line 847
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 848
    .line 849
    .line 850
    move-result-object v7

    .line 851
    goto :goto_f

    .line 852
    :cond_21
    invoke-virtual {v7}, Ljava/time/Duration;->toDays()J

    .line 853
    .line 854
    .line 855
    move-result-wide v9

    .line 856
    const-wide/16 v13, 0xe

    .line 857
    .line 858
    cmp-long v9, v9, v13

    .line 859
    .line 860
    if-gez v9, :cond_22

    .line 861
    .line 862
    const v7, 0x7f130c72

    .line 863
    .line 864
    .line 865
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v7

    .line 869
    goto :goto_f

    .line 870
    :cond_22
    invoke-virtual {v7}, Ljava/time/Duration;->toDays()J

    .line 871
    .line 872
    .line 873
    move-result-wide v9

    .line 874
    cmp-long v7, v9, v13

    .line 875
    .line 876
    if-nez v7, :cond_23

    .line 877
    .line 878
    const v7, 0x7f1311a4

    .line 879
    .line 880
    .line 881
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v7

    .line 885
    goto :goto_f

    .line 886
    :cond_23
    const v7, 0x7f130c73

    .line 887
    .line 888
    .line 889
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v7

    .line 893
    :goto_f
    const v9, 0x7f0a0579

    .line 894
    .line 895
    .line 896
    if-eqz v7, :cond_24

    .line 897
    .line 898
    const/4 v2, 0x0

    .line 899
    invoke-virtual {v0, v9, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 900
    .line 901
    .line 902
    invoke-virtual {v0, v9, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 903
    .line 904
    .line 905
    goto :goto_12

    .line 906
    :cond_24
    invoke-virtual {v0, v9, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 907
    .line 908
    .line 909
    const/4 v7, 0x1

    .line 910
    if-ne v12, v7, :cond_27

    .line 911
    .line 912
    const/4 v7, 0x3

    .line 913
    invoke-virtual {v0, v2, v8, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 914
    .line 915
    .line 916
    goto :goto_12

    .line 917
    :cond_25
    :goto_10
    if-eqz v5, :cond_26

    .line 918
    .line 919
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->isUserQuieted()Z

    .line 920
    .line 921
    .line 922
    move-result v0

    .line 923
    if-eqz v0, :cond_26

    .line 924
    .line 925
    new-instance v0, Landroid/widget/RemoteViews;

    .line 926
    .line 927
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v2

    .line 931
    const v7, 0x7f0d027e

    .line 932
    .line 933
    .line 934
    invoke-direct {v0, v2, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 935
    .line 936
    .line 937
    goto :goto_11

    .line 938
    :cond_26
    new-instance v0, Landroid/widget/RemoteViews;

    .line 939
    .line 940
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 941
    .line 942
    .line 943
    move-result-object v2

    .line 944
    const v7, 0x7f0d027b

    .line 945
    .line 946
    .line 947
    invoke-direct {v0, v2, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 948
    .line 949
    .line 950
    :goto_11
    const v2, 0x7f080851

    .line 951
    .line 952
    .line 953
    invoke-virtual {v6, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 954
    .line 955
    .line 956
    move-result-object v2

    .line 957
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 958
    .line 959
    .line 960
    move-result-object v2

    .line 961
    const/high16 v7, 0x3f800000    # 1.0f

    .line 962
    .line 963
    invoke-static {v7}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getDisabledColorFilter(F)Landroid/graphics/ColorFilter;

    .line 964
    .line 965
    .line 966
    move-result-object v7

    .line 967
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 968
    .line 969
    .line 970
    invoke-static {v2}, Lcom/android/systemui/people/PeopleSpaceUtils;->convertDrawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    .line 971
    .line 972
    .line 973
    move-result-object v2

    .line 974
    const v7, 0x7f0a04a2

    .line 975
    .line 976
    .line 977
    invoke-virtual {v0, v7, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 978
    .line 979
    .line 980
    :cond_27
    :goto_12
    move-object v2, v0

    .line 981
    :goto_13
    invoke-virtual {v1, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getMaxAvatarSize(Landroid/widget/RemoteViews;)I

    .line 982
    .line 983
    .line 984
    move-result v0

    .line 985
    if-nez v5, :cond_28

    .line 986
    .line 987
    goto/16 :goto_18

    .line 988
    .line 989
    :cond_28
    :try_start_1
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    .line 990
    .line 991
    .line 992
    move-result-object v7

    .line 993
    if-eqz v7, :cond_29

    .line 994
    .line 995
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getStatuses()Ljava/util/List;

    .line 996
    .line 997
    .line 998
    move-result-object v7

    .line 999
    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v7

    .line 1003
    new-instance v8, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda3;

    .line 1004
    .line 1005
    const/4 v9, 0x0

    .line 1006
    invoke-direct {v8, v9}, Lcom/android/systemui/people/PeopleTileViewHelper$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1007
    .line 1008
    .line 1009
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 1010
    .line 1011
    .line 1012
    move-result v7

    .line 1013
    if-eqz v7, :cond_29

    .line 1014
    .line 1015
    const/4 v7, 0x1

    .line 1016
    goto :goto_14

    .line 1017
    :cond_29
    const/4 v7, 0x0

    .line 1018
    :goto_14
    const v8, 0x7f0a010d

    .line 1019
    .line 1020
    .line 1021
    if-eqz v7, :cond_2a

    .line 1022
    .line 1023
    const/4 v3, 0x0

    .line 1024
    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1025
    .line 1026
    .line 1027
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v3

    .line 1031
    const v7, 0x7f070078

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1035
    .line 1036
    .line 1037
    move-result v3

    .line 1038
    const v7, 0x7f130c95

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v7

    .line 1045
    invoke-virtual {v2, v8, v7}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 1046
    .line 1047
    .line 1048
    goto :goto_15

    .line 1049
    :cond_2a
    invoke-virtual {v2, v8, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 1053
    .line 1054
    .line 1055
    move-result-object v3

    .line 1056
    const v7, 0x7f070076

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 1060
    .line 1061
    .line 1062
    move-result v3

    .line 1063
    :goto_15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 1064
    .line 1065
    .line 1066
    move-result-object v7

    .line 1067
    invoke-static {v7}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 1068
    .line 1069
    .line 1070
    move-result v7

    .line 1071
    if-nez v7, :cond_2b

    .line 1072
    .line 1073
    const/4 v7, 0x1

    .line 1074
    goto :goto_16

    .line 1075
    :cond_2b
    const/4 v7, 0x0

    .line 1076
    :goto_16
    const v8, 0x7f0a07b2

    .line 1077
    .line 1078
    .line 1079
    if-eqz v7, :cond_2c

    .line 1080
    .line 1081
    move v9, v3

    .line 1082
    goto :goto_17

    .line 1083
    :cond_2c
    const/4 v9, 0x0

    .line 1084
    :goto_17
    const/4 v10, 0x0

    .line 1085
    if-eqz v7, :cond_2d

    .line 1086
    .line 1087
    const/4 v3, 0x0

    .line 1088
    :cond_2d
    move v11, v3

    .line 1089
    const/4 v12, 0x0

    .line 1090
    move-object v7, v2

    .line 1091
    invoke-virtual/range {v7 .. v12}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 1092
    .line 1093
    .line 1094
    invoke-static {v5}, Lcom/android/systemui/people/PeopleTileViewHelper;->getHasNewStory(Landroid/app/people/PeopleSpaceTile;)Z

    .line 1095
    .line 1096
    .line 1097
    move-result v3

    .line 1098
    iget-object v7, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 1099
    .line 1100
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getUserIcon()Landroid/graphics/drawable/Icon;

    .line 1101
    .line 1102
    .line 1103
    move-result-object v10

    .line 1104
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getPackageName()Ljava/lang/String;

    .line 1105
    .line 1106
    .line 1107
    move-result-object v11

    .line 1108
    sget-object v8, Lcom/android/systemui/people/PeopleSpaceUtils;->EMPTY_KEY:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 1109
    .line 1110
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getUserHandle()Landroid/os/UserHandle;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v8

    .line 1114
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    .line 1115
    .line 1116
    .line 1117
    move-result v12

    .line 1118
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->isImportantConversation()Z

    .line 1119
    .line 1120
    .line 1121
    move-result v13

    .line 1122
    invoke-static {v5}, Lcom/android/systemui/people/PeopleTileViewHelper;->isDndBlockingTileData(Landroid/app/people/PeopleSpaceTile;)Z

    .line 1123
    .line 1124
    .line 1125
    move-result v14

    .line 1126
    move v8, v0

    .line 1127
    move v9, v3

    .line 1128
    invoke-static/range {v7 .. v14}, Lcom/android/systemui/people/PeopleTileViewHelper;->getPersonIconBitmap(Landroid/content/Context;IZLandroid/graphics/drawable/Icon;Ljava/lang/String;IZZ)Landroid/graphics/Bitmap;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v0

    .line 1132
    const v7, 0x7f0a07df

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual {v2, v7, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1136
    .line 1137
    .line 1138
    if-eqz v3, :cond_2e

    .line 1139
    .line 1140
    const/4 v0, 0x1

    .line 1141
    new-array v0, v0, [Ljava/lang/Object;

    .line 1142
    .line 1143
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v3

    .line 1147
    const/4 v8, 0x0

    .line 1148
    aput-object v3, v0, v8

    .line 1149
    .line 1150
    const v3, 0x7f130be9

    .line 1151
    .line 1152
    .line 1153
    invoke-virtual {v6, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v0

    .line 1157
    invoke-virtual {v2, v7, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 1158
    .line 1159
    .line 1160
    goto :goto_18

    .line 1161
    :cond_2e
    const/4 v0, 0x0

    .line 1162
    invoke-virtual {v2, v7, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1163
    .line 1164
    .line 1165
    goto :goto_18

    .line 1166
    :catch_1
    move-exception v0

    .line 1167
    const-string v3, "Failed to set common fields: "

    .line 1168
    .line 1169
    invoke-static {v3, v0, v4}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1170
    .line 1171
    .line 1172
    :goto_18
    iget-object v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mKey:Lcom/android/systemui/people/widget/PeopleTileKey;

    .line 1173
    .line 1174
    invoke-static {v0}, Lcom/android/systemui/people/widget/PeopleTileKey;->isValid(Lcom/android/systemui/people/widget/PeopleTileKey;)Z

    .line 1175
    .line 1176
    .line 1177
    move-result v3

    .line 1178
    if-eqz v3, :cond_30

    .line 1179
    .line 1180
    if-nez v5, :cond_2f

    .line 1181
    .line 1182
    goto :goto_19

    .line 1183
    :cond_2f
    :try_start_2
    new-instance v3, Landroid/content/Intent;

    .line 1184
    .line 1185
    const-class v7, Lcom/android/systemui/people/widget/LaunchConversationActivity;

    .line 1186
    .line 1187
    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1188
    .line 1189
    .line 1190
    const v7, 0x50808000

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1194
    .line 1195
    .line 1196
    const-string v7, "extra_tile_id"

    .line 1197
    .line 1198
    iget-object v8, v0, Lcom/android/systemui/people/widget/PeopleTileKey;->mShortcutId:Ljava/lang/String;

    .line 1199
    .line 1200
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1201
    .line 1202
    .line 1203
    const-string v7, "extra_package_name"

    .line 1204
    .line 1205
    iget-object v8, v0, Lcom/android/systemui/people/widget/PeopleTileKey;->mPackageName:Ljava/lang/String;

    .line 1206
    .line 1207
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1208
    .line 1209
    .line 1210
    const-string v7, "extra_user_handle"

    .line 1211
    .line 1212
    new-instance v8, Landroid/os/UserHandle;

    .line 1213
    .line 1214
    iget v0, v0, Lcom/android/systemui/people/widget/PeopleTileKey;->mUserId:I

    .line 1215
    .line 1216
    invoke-direct {v8, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 1217
    .line 1218
    .line 1219
    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1220
    .line 1221
    .line 1222
    const-string v0, "extra_notification_key"

    .line 1223
    .line 1224
    invoke-virtual {v5}, Landroid/app/people/PeopleSpaceTile;->getNotificationKey()Ljava/lang/String;

    .line 1225
    .line 1226
    .line 1227
    move-result-object v5

    .line 1228
    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1229
    .line 1230
    .line 1231
    iget v0, v1, Lcom/android/systemui/people/PeopleTileViewHelper;->mAppWidgetId:I

    .line 1232
    .line 1233
    const/high16 v1, 0xa000000

    .line 1234
    .line 1235
    invoke-static {v6, v0, v3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v0

    .line 1239
    const/high16 v1, 0x1020000

    .line 1240
    .line 1241
    invoke-virtual {v2, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1242
    .line 1243
    .line 1244
    goto :goto_19

    .line 1245
    :catch_2
    move-exception v0

    .line 1246
    const-string v1, "Failed to add launch intents: "

    .line 1247
    .line 1248
    invoke-static {v1, v0, v4}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 1249
    .line 1250
    .line 1251
    :cond_30
    :goto_19
    return-object v2
.end method

.method public final setAvailabilityDotPadding(Landroid/widget/RemoteViews;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v1, 0x7f07085a

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    .line 20
    .line 21
    move-result v7

    .line 22
    const v3, 0x7f0a067d

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iget-boolean p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mIsLeftToRight:Z

    .line 27
    .line 28
    if-eqz p0, :cond_0

    .line 29
    .line 30
    move v4, p2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move v4, v0

    .line 33
    :goto_0
    const/4 v5, 0x0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    move v6, v0

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move v6, p2

    .line 39
    :goto_1
    move-object v2, p1

    .line 40
    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final setMaxLines(Landroid/widget/RemoteViews;Z)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const v2, 0x7f070959

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const v3, 0x7f0701df

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const v2, 0x7f07095a

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v2}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    const v3, 0x7f0701e0

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    const v5, 0x7f0d0274

    .line 32
    .line 33
    .line 34
    const/4 v6, 0x1

    .line 35
    if-ne v4, v5, :cond_1

    .line 36
    .line 37
    move v4, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    const/4 v4, 0x0

    .line 40
    :goto_1
    if-eq v0, v6, :cond_4

    .line 41
    .line 42
    if-eq v0, v1, :cond_2

    .line 43
    .line 44
    const/4 v0, -0x1

    .line 45
    goto :goto_4

    .line 46
    :cond_2
    if-eqz v4, :cond_3

    .line 47
    .line 48
    const/16 v0, 0x4c

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    const/16 v0, 0x3e

    .line 52
    .line 53
    :goto_2
    const v4, 0x7f070811

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v4}, Lcom/android/systemui/people/PeopleTileViewHelper;->getSizeInDp(I)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    add-int/2addr v4, v2

    .line 61
    add-int/2addr v4, v0

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    add-int/lit8 v2, v2, 0xc

    .line 64
    .line 65
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mMediumVerticalPadding:I

    .line 66
    .line 67
    mul-int/2addr v0, v1

    .line 68
    add-int v4, v0, v2

    .line 69
    .line 70
    :goto_3
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    .line 71
    .line 72
    sub-int/2addr v0, v4

    .line 73
    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/systemui/people/PeopleTileViewHelper;->getLineHeightFromResource(I)I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    invoke-static {v0, p0}, Ljava/lang/Math;->floorDiv(II)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p2, :cond_5

    .line 86
    .line 87
    add-int/lit8 p0, p0, -0x1

    .line 88
    .line 89
    :cond_5
    const p2, 0x7f0a0bc0

    .line 90
    .line 91
    .line 92
    const-string/jumbo v0, "setMaxLines"

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1, p2, v0, p0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public final setPredefinedIconVisible(Landroid/widget/RemoteViews;)V
    .locals 8

    .line 1
    const v0, 0x7f0a0801

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-ne v0, v2, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v2, 0x7f0700b5

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const v3, 0x7f0a0715

    .line 27
    .line 28
    .line 29
    iget-boolean p0, p0, Lcom/android/systemui/people/PeopleTileViewHelper;->mIsLeftToRight:Z

    .line 30
    .line 31
    if-eqz p0, :cond_0

    .line 32
    .line 33
    move v4, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v4, v0

    .line 36
    :goto_0
    const/4 v5, 0x0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    move v6, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    move v6, v1

    .line 42
    :goto_1
    const/4 v7, 0x0

    .line 43
    move-object v2, p1

    .line 44
    invoke-virtual/range {v2 .. v7}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 45
    .line 46
    .line 47
    :cond_2
    return-void
.end method

.method public final setViewForContentLayout(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v7, p1

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    invoke-virtual {p0, v7, v1}, Lcom/android/systemui/people/PeopleTileViewHelper;->decorateBackground(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)Landroid/widget/RemoteViews;

    .line 7
    .line 8
    .line 9
    const v8, 0x7f0a0801

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v7, v8, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    const v2, 0x7f0a0bc0

    .line 17
    .line 18
    .line 19
    invoke-virtual {v7, v2, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    const v9, 0x7f0a0715

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7, v9, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    const v3, 0x7f0a04bb

    .line 29
    .line 30
    .line 31
    invoke-virtual {v7, v3, v1}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v7, v2, v9}, Landroid/widget/RemoteViews;->setAccessibilityTraversalAfter(II)V

    .line 35
    .line 36
    .line 37
    const/4 v10, 0x0

    .line 38
    const/16 v11, 0x8

    .line 39
    .line 40
    iget v12, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mLayoutSize:I

    .line 41
    .line 42
    if-nez v12, :cond_0

    .line 43
    .line 44
    invoke-virtual {v7, v8, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v7, v9, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v7, v8, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v7, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, v2, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 58
    .line 59
    .line 60
    const v1, 0x7f0a0b4c

    .line 61
    .line 62
    .line 63
    invoke-virtual {v7, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v3, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 67
    .line 68
    .line 69
    const v1, 0x7f0a0948

    .line 70
    .line 71
    .line 72
    invoke-virtual {v7, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 73
    .line 74
    .line 75
    :goto_0
    const/4 v1, 0x1

    .line 76
    iget-object v13, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mContext:Landroid/content/Context;

    .line 77
    .line 78
    if-ne v12, v1, :cond_1

    .line 79
    .line 80
    iget v14, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mDensity:F

    .line 81
    .line 82
    const/high16 v1, 0x41800000    # 16.0f

    .line 83
    .line 84
    mul-float/2addr v1, v14

    .line 85
    float-to-double v1, v1

    .line 86
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 87
    .line 88
    .line 89
    move-result-wide v1

    .line 90
    double-to-int v5, v1

    .line 91
    iget v1, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mMediumVerticalPadding:I

    .line 92
    .line 93
    int-to-float v1, v1

    .line 94
    mul-float/2addr v1, v14

    .line 95
    float-to-double v1, v1

    .line 96
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    .line 97
    .line 98
    .line 99
    move-result-wide v1

    .line 100
    double-to-int v6, v1

    .line 101
    const v2, 0x7f0a0297

    .line 102
    .line 103
    .line 104
    move-object/from16 v1, p1

    .line 105
    .line 106
    move v3, v5

    .line 107
    move v4, v6

    .line 108
    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 109
    .line 110
    .line 111
    const v2, 0x7f0a0715

    .line 112
    .line 113
    .line 114
    const/4 v3, 0x0

    .line 115
    const/4 v4, 0x0

    .line 116
    const/4 v5, 0x0

    .line 117
    const/4 v6, 0x0

    .line 118
    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    const v2, 0x7f07085b

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    div-float/2addr v1, v14

    .line 133
    float-to-int v1, v1

    .line 134
    iget v2, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mHeight:I

    .line 135
    .line 136
    if-le v2, v1, :cond_1

    .line 137
    .line 138
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const v2, 0x7f07080f

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    float-to-int v1, v1

    .line 150
    int-to-float v1, v1

    .line 151
    invoke-virtual {v7, v9, v10, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 152
    .line 153
    .line 154
    :cond_1
    const/4 v1, 0x2

    .line 155
    if-ne v12, v1, :cond_2

    .line 156
    .line 157
    const v2, 0x7f0a0715

    .line 158
    .line 159
    .line 160
    const/4 v3, 0x0

    .line 161
    const/4 v4, 0x0

    .line 162
    const/4 v5, 0x0

    .line 163
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    const v6, 0x7f0700b9

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    move-object/from16 v1, p1

    .line 175
    .line 176
    invoke-virtual/range {v1 .. v6}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 177
    .line 178
    .line 179
    const/16 v1, 0x30

    .line 180
    .line 181
    const v2, 0x7f0a0297

    .line 182
    .line 183
    .line 184
    const-string/jumbo v3, "setGravity"

    .line 185
    .line 186
    .line 187
    invoke-virtual {v7, v2, v3, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 188
    .line 189
    .line 190
    :cond_2
    const v1, 0x7f070cf6

    .line 191
    .line 192
    .line 193
    invoke-virtual {v7, v8, v1}, Landroid/widget/RemoteViews;->setViewLayoutHeightDimen(II)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v8, v1}, Landroid/widget/RemoteViews;->setViewLayoutWidthDimen(II)V

    .line 197
    .line 198
    .line 199
    const v1, 0x7f0a0689

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7, v1, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 203
    .line 204
    .line 205
    iget-object v0, v0, Lcom/android/systemui/people/PeopleTileViewHelper;->mTile:Landroid/app/people/PeopleSpaceTile;

    .line 206
    .line 207
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    if-eqz v1, :cond_3

    .line 212
    .line 213
    invoke-virtual {v0}, Landroid/app/people/PeopleSpaceTile;->getUserName()Ljava/lang/CharSequence;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v7, v9, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 218
    .line 219
    .line 220
    :cond_3
    return-object v7
.end method
