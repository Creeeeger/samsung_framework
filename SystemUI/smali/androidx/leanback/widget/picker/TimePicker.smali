.class public Landroidx/leanback/widget/picker/TimePicker;
.super Landroidx/leanback/widget/picker/Picker;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

.field public mColAmPmIndex:I

.field public mColHourIndex:I

.field public mColMinuteIndex:I

.field public final mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

.field public mCurrentAmPmIndex:I

.field public mCurrentHour:I

.field public mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

.field public final mIs24hFormat:Z

.field public mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

.field public mTimePickerFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0406f6

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/picker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/picker/Picker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 5
    new-instance v1, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    invoke-direct {v1, p3, v0}, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;-><init>(Ljava/util/Locale;Landroid/content/res/Resources;)V

    .line 6
    iput-object v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    .line 7
    sget-object v4, Landroidx/leanback/R$styleable;->lbTimePicker:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 8
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    .line 9
    invoke-static/range {v2 .. v8}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 10
    :try_start_0
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    .line 11
    invoke-virtual {p3, p2, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    const/4 v0, 0x3

    const/4 v2, 0x1

    .line 12
    invoke-virtual {p3, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    move-result-object p3

    .line 15
    iget-object v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mTimePickerFormat:Ljava/lang/String;

    invoke-static {p3, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    goto/16 :goto_d

    .line 16
    :cond_0
    iput-object p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mTimePickerFormat:Ljava/lang/String;

    .line 17
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    move-result-object p3

    .line 18
    iget-object v1, v1, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, p2

    :goto_0
    const/16 v3, 0x61

    .line 19
    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const-string v5, "a"

    if-ltz v3, :cond_3

    .line 20
    invoke-virtual {p3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v6, "m"

    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    if-le v3, p3, :cond_2

    goto :goto_1

    :cond_2
    move p3, p2

    goto :goto_2

    :cond_3
    :goto_1
    move p3, v2

    :goto_2
    if-eqz v1, :cond_4

    const-string/jumbo v1, "mh"

    goto :goto_3

    :cond_4
    const-string v1, "hm"

    :goto_3
    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    if-eqz p3, :cond_6

    .line 21
    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_6
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    move-object v1, p1

    .line 22
    :goto_5
    invoke-virtual {p0}, Landroidx/leanback/widget/picker/TimePicker;->getBestHourMinutePattern()Ljava/lang/String;

    move-result-object p1

    .line 23
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x7

    new-array v6, v5, [C

    .line 25
    fill-array-data v6, :array_0

    move v7, p2

    move v8, v7

    move v9, v8

    .line 26
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_f

    .line 27
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-ne v10, v11, :cond_7

    goto :goto_a

    :cond_7
    const/16 v11, 0x27

    if-ne v10, v11, :cond_9

    if-nez v8, :cond_8

    .line 28
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    move v8, v2

    goto :goto_a

    :cond_8
    move v8, p2

    goto :goto_a

    :cond_9
    if-eqz v8, :cond_a

    .line 29
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9

    :cond_a
    move v11, p2

    :goto_7
    if-ge v11, v5, :cond_c

    .line 30
    aget-char v5, v6, v11

    if-ne v10, v5, :cond_b

    move v5, v2

    goto :goto_8

    :cond_b
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x7

    goto :goto_7

    :cond_c
    move v5, p2

    :goto_8
    if-eqz v5, :cond_d

    if-eq v10, v9, :cond_e

    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_9

    .line 33
    :cond_d
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    :goto_9
    move v9, v10

    :goto_a
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x7

    goto :goto_6

    .line 34
    :cond_f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    if-ne p1, v3, :cond_23

    .line 36
    iget-object p1, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 37
    iget-object p1, p0, Landroidx/leanback/widget/picker/Picker;->mSeparators:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 38
    iget-object p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object p1, p1, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 39
    iput-object v4, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iput-object v4, p0, Landroidx/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iput-object v4, p0, Landroidx/leanback/widget/picker/TimePicker;->mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

    const/4 p3, -0x1

    .line 40
    iput p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    iput p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    iput p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mColHourIndex:I

    .line 41
    new-instance p3, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v1, p2

    .line 42
    :goto_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_15

    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x41

    if-eq v3, v5, :cond_12

    const/16 v5, 0x48

    if-eq v3, v5, :cond_11

    const/16 v5, 0x4d

    if-ne v3, v5, :cond_10

    .line 44
    new-instance v3, Landroidx/leanback/widget/picker/PickerColumn;

    invoke-direct {v3}, Landroidx/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iget-object v5, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v5, v5, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->minutes:[Ljava/lang/String;

    .line 46
    iput-object v5, v3, Landroidx/leanback/widget/picker/PickerColumn;->mStaticLabels:[Ljava/lang/CharSequence;

    .line 47
    iput v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    goto :goto_c

    .line 48
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid time picker format."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_11
    new-instance v3, Landroidx/leanback/widget/picker/PickerColumn;

    invoke-direct {v3}, Landroidx/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iget-object v5, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v5, v5, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->hours24:[Ljava/lang/String;

    .line 51
    iput-object v5, v3, Landroidx/leanback/widget/picker/PickerColumn;->mStaticLabels:[Ljava/lang/CharSequence;

    .line 52
    iput v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mColHourIndex:I

    goto :goto_c

    .line 53
    :cond_12
    new-instance v3, Landroidx/leanback/widget/picker/PickerColumn;

    invoke-direct {v3}, Landroidx/leanback/widget/picker/PickerColumn;-><init>()V

    iput-object v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iget-object v5, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object v5, v5, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->ampm:[Ljava/lang/String;

    .line 55
    iput-object v5, v3, Landroidx/leanback/widget/picker/PickerColumn;->mStaticLabels:[Ljava/lang/CharSequence;

    .line 56
    iput v1, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    .line 57
    iget v5, v3, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    if-eqz v5, :cond_13

    .line 58
    iput p2, v3, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 59
    :cond_13
    iget v5, v3, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    if-eq v2, v5, :cond_14

    .line 60
    iput v2, v3, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    :cond_14
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 61
    :cond_15
    invoke-virtual {p0, p3}, Landroidx/leanback/widget/picker/Picker;->setColumns(Ljava/util/List;)V

    .line 62
    :goto_d
    iget-object p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mHourColumn:Landroidx/leanback/widget/picker/PickerColumn;

    iget-boolean p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    xor-int/lit8 v1, p3, 0x1

    .line 63
    iget v3, p1, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    if-eq v1, v3, :cond_16

    .line 64
    iput v1, p1, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    :cond_16
    const/16 v1, 0x17

    const/16 v3, 0xc

    if-eqz p3, :cond_17

    move p3, v1

    goto :goto_e

    :cond_17
    move p3, v3

    .line 65
    :goto_e
    iget v5, p1, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    if-eq p3, v5, :cond_18

    .line 66
    iput p3, p1, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    .line 67
    :cond_18
    iget-object p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mMinuteColumn:Landroidx/leanback/widget/picker/PickerColumn;

    .line 68
    iget p3, p1, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    if-eqz p3, :cond_19

    .line 69
    iput p2, p1, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 70
    :cond_19
    iget p3, p1, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    const/16 v5, 0x3b

    if-eq v5, p3, :cond_1a

    .line 71
    iput v5, p1, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    .line 72
    :cond_1a
    iget-object p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mAmPmColumn:Landroidx/leanback/widget/picker/PickerColumn;

    if-eqz p1, :cond_1c

    .line 73
    iget p3, p1, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    if-eqz p3, :cond_1b

    .line 74
    iput p2, p1, Landroidx/leanback/widget/picker/PickerColumn;->mMinValue:I

    .line 75
    :cond_1b
    iget p3, p1, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    if-eq v2, p3, :cond_1c

    .line 76
    iput v2, p1, Landroidx/leanback/widget/picker/PickerColumn;->mMaxValue:I

    :cond_1c
    if-eqz v0, :cond_22

    .line 77
    iget-object p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    iget-object p1, p1, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    invoke-static {v4, p1}, Landroidx/leanback/widget/picker/PickerUtility;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    const/16 p3, 0xb

    .line 78
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    if-ltz p3, :cond_21

    if-gt p3, v1, :cond_21

    .line 79
    iput p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    .line 80
    iget-boolean v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-nez v0, :cond_1f

    if-lt p3, v3, :cond_1d

    .line 81
    iput v2, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    if-le p3, v3, :cond_1e

    sub-int/2addr p3, v3

    .line 82
    iput p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    goto :goto_f

    .line 83
    :cond_1d
    iput p2, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    if-nez p3, :cond_1e

    .line 84
    iput v3, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    :cond_1e
    :goto_f
    if-nez v0, :cond_1f

    .line 85
    iget p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    invoke-virtual {p0, p3, v0, p2}, Landroidx/leanback/widget/picker/Picker;->setColumnValue(IIZ)V

    .line 86
    :cond_1f
    iget p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mColHourIndex:I

    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    invoke-virtual {p0, p3, v0, p2}, Landroidx/leanback/widget/picker/Picker;->setColumnValue(IIZ)V

    .line 87
    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ltz p1, :cond_20

    if-gt p1, v5, :cond_20

    .line 88
    iget p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    invoke-virtual {p0, p3, p1, p2}, Landroidx/leanback/widget/picker/Picker;->setColumnValue(IIZ)V

    .line 89
    iget-boolean p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    if-nez p1, :cond_22

    .line 90
    iget p1, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    iget p3, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    invoke-virtual {p0, p1, p3, p2}, Landroidx/leanback/widget/picker/Picker;->setColumnValue(IIZ)V

    goto :goto_10

    .line 91
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "minute: "

    const-string p3, " is not in [0-59] range."

    .line 92
    invoke-static {p2, p1, p3}, Landroidx/core/os/LocaleListCompatWrapper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hour: "

    const-string p2, " is not in [0-23] range in"

    .line 95
    invoke-static {p1, p3, p2}, Landroidx/core/os/LocaleListCompatWrapper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_10
    return-void

    .line 97
    :cond_23
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Separators size: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " must equal the size of timeFieldsPattern: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " + 1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 99
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    throw p0

    :array_0
    .array-data 2
        0x48s
        0x68s
        0x4bs
        0x6bs
        0x6ds
        0x4ds
        0x61s
    .end array-data
.end method


# virtual methods
.method public final getBestHourMinutePattern()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mConstant:Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/leanback/widget/picker/PickerUtility$TimeConstant;->locale:Ljava/util/Locale;

    .line 4
    .line 5
    iget-boolean p0, p0, Landroidx/leanback/widget/picker/TimePicker;->mIs24hFormat:Z

    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const-string p0, "Hma"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p0, "hma"

    .line 13
    .line 14
    :goto_0
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string p0, "h:mma"

    .line 25
    .line 26
    :cond_1
    return-object p0
.end method

.method public final onColumnValueChanged(II)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mColHourIndex:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iput p2, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentHour:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mColMinuteIndex:I

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget v0, p0, Landroidx/leanback/widget/picker/TimePicker;->mColAmPmIndex:I

    .line 14
    .line 15
    if-ne p1, v0, :cond_2

    .line 16
    .line 17
    iput p2, p0, Landroidx/leanback/widget/picker/TimePicker;->mCurrentAmPmIndex:I

    .line 18
    .line 19
    :goto_0
    return-void

    .line 20
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p1, "Invalid column index."

    .line 23
    .line 24
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0
.end method
