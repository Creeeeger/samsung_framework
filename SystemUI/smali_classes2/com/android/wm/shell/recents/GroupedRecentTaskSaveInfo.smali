.class public final Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mCellBounds:Landroid/graphics/Rect;

.field public mCellPosition:I

.field public mCellTaskId:I

.field public mLeftTopBounds:Landroid/graphics/Rect;

.field public mLeftTopTaskId:I

.field public mRightBottomBounds:Landroid/graphics/Rect;

.field public mRightBottomTaskId:I

.field public mSplitDivision:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    .line 3
    iput v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    .line 4
    iput v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    .line 5
    iput v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mSplitDivision:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellPosition:I

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/util/SplitBounds;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    .line 9
    iput v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    .line 10
    iput v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    .line 11
    iput v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mSplitDivision:I

    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellPosition:I

    .line 13
    iget v1, p1, Lcom/android/wm/shell/util/SplitBounds;->leftTopTaskId:I

    iput v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    .line 14
    iget v1, p1, Lcom/android/wm/shell/util/SplitBounds;->rightBottomTaskId:I

    iput v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    .line 15
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    if-eq v1, v0, :cond_0

    .line 16
    iput v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    .line 17
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/wm/shell/util/SplitBounds;->leftTopBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopBounds:Landroid/graphics/Rect;

    .line 18
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lcom/android/wm/shell/util/SplitBounds;->rightBottomBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomBounds:Landroid/graphics/Rect;

    .line 19
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    if-eqz v1, :cond_2

    .line 20
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellBounds:Landroid/graphics/Rect;

    .line 21
    iget v2, p1, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    if-eq v2, v0, :cond_1

    .line 22
    iget-object v2, p1, Lcom/android/wm/shell/util/SplitBounds;->cellTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 24
    :cond_2
    :goto_0
    iget-boolean v1, p1, Lcom/android/wm/shell/util/SplitBounds;->appsStackedVertically:Z

    .line 25
    iput v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mSplitDivision:I

    .line 26
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    if-eqz v1, :cond_3

    iget v1, p1, Lcom/android/wm/shell/util/SplitBounds;->cellTaskId:I

    if-eq v1, v0, :cond_3

    .line 27
    iget p1, p1, Lcom/android/wm/shell/util/SplitBounds;->cellPosition:I

    iput p1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellPosition:I

    :cond_3
    return-void
.end method

.method public static jsonToGroupedRecentTaskSaveInfo(Lorg/json/JSONObject;)Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "left_top_taskid"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iput v1, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    .line 13
    .line 14
    const-string/jumbo v1, "right_bottom_taskid"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    .line 22
    .line 23
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    const-string v1, "cell_taskid"

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    iput v1, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    .line 34
    .line 35
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    .line 36
    .line 37
    const-string v2, "left_top_bounds"

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 48
    .line 49
    .line 50
    iput-object v1, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopBounds:Landroid/graphics/Rect;

    .line 51
    .line 52
    new-instance v1, Landroid/graphics/Rect;

    .line 53
    .line 54
    const-string/jumbo v2, "right_bottom_bounds"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 66
    .line 67
    .line 68
    iput-object v1, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomBounds:Landroid/graphics/Rect;

    .line 69
    .line 70
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 71
    .line 72
    if-eqz v1, :cond_1

    .line 73
    .line 74
    new-instance v1, Landroid/graphics/Rect;

    .line 75
    .line 76
    const-string v2, "cell_bounds"

    .line 77
    .line 78
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v2}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellBounds:Landroid/graphics/Rect;

    .line 90
    .line 91
    :cond_1
    const-string/jumbo v1, "split_division"

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    iput v1, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mSplitDivision:I

    .line 99
    .line 100
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 101
    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    const-string v1, "cell_position"

    .line 105
    .line 106
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    iput p0, v0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellPosition:I

    .line 111
    .line 112
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;

    .line 8
    .line 9
    iget v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    .line 10
    .line 11
    iget v2, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    .line 16
    .line 17
    iget v2, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    iget v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    .line 22
    .line 23
    iget v2, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopBounds:Landroid/graphics/Rect;

    .line 28
    .line 29
    iget-object v2, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopBounds:Landroid/graphics/Rect;

    .line 30
    .line 31
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomBounds:Landroid/graphics/Rect;

    .line 38
    .line 39
    iget-object v2, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomBounds:Landroid/graphics/Rect;

    .line 40
    .line 41
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellBounds:Landroid/graphics/Rect;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellBounds:Landroid/graphics/Rect;

    .line 50
    .line 51
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_1

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    :cond_1
    return v1
.end method

.method public final groupedRecentTaskSaveInfoToJSON()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "left_top_taskid"

    .line 7
    .line 8
    iget v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string/jumbo v1, "right_bottom_taskid"

    .line 14
    .line 15
    .line 16
    iget v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const-string v1, "cell_taskid"

    .line 26
    .line 27
    iget v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopBounds:Landroid/graphics/Rect;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "left_top_bounds"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomBounds:Landroid/graphics/Rect;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string/jumbo v2, "right_bottom_bounds"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iget-object v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellBounds:Landroid/graphics/Rect;

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v2, "cell_bounds"

    .line 66
    .line 67
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    :cond_1
    const-string/jumbo v1, "split_division"

    .line 71
    .line 72
    .line 73
    iget v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mSplitDivision:I

    .line 74
    .line 75
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_RECENT_TASKS:Z

    .line 79
    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    const-string v1, "cell_position"

    .line 83
    .line 84
    iget p0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellPosition:I

    .line 85
    .line 86
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    :cond_2
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "leftTop: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopBounds:Landroid/graphics/Rect;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", taskId: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mLeftTopTaskId:I

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "\nrightBottom: "

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomBounds:Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mRightBottomTaskId:I

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, "\ncell: "

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellBounds:Landroid/graphics/Rect;

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget p0, p0, Lcom/android/wm/shell/recents/GroupedRecentTaskSaveInfo;->mCellTaskId:I

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    return-object p0
.end method
