.class public final Lcom/android/systemui/qs/bar/micmode/MicModeItemFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/bar/micmode/MicModeItemFactory;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/systemui/qs/bar/micmode/MicModeItemFactory;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final create(ILandroid/content/Context;)Lcom/android/systemui/qs/bar/micmode/MicModeDetailItems$Item;
    .locals 19

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const v3, 0x7f130f6b

    .line 7
    .line 8
    .line 9
    if-eq v0, v2, :cond_3

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-eq v0, v2, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    const v4, 0x7f130f6a

    .line 16
    .line 17
    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    if-eq v0, v2, :cond_0

    .line 22
    .line 23
    new-instance v0, Lcom/android/systemui/qs/bar/micmode/StandardVoipItem;

    .line 24
    .line 25
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v8, 0x0

    .line 31
    const/4 v9, 0x0

    .line 32
    const/16 v10, 0xe

    .line 33
    .line 34
    const/4 v11, 0x0

    .line 35
    move-object v5, v0

    .line 36
    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/qs/bar/micmode/StandardVoipItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lcom/android/systemui/qs/bar/micmode/VoiceFocusCallItem;

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v13

    .line 46
    const/4 v14, 0x0

    .line 47
    const/4 v15, 0x0

    .line 48
    const/16 v16, 0x0

    .line 49
    .line 50
    const/16 v17, 0xe

    .line 51
    .line 52
    const/16 v18, 0x0

    .line 53
    .line 54
    move-object v12, v0

    .line 55
    invoke-direct/range {v12 .. v18}, Lcom/android/systemui/qs/bar/micmode/VoiceFocusCallItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Lcom/android/systemui/qs/bar/micmode/StandardCallItem;

    .line 60
    .line 61
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const/4 v3, 0x0

    .line 66
    const/4 v4, 0x0

    .line 67
    const/4 v5, 0x0

    .line 68
    const/16 v6, 0xe

    .line 69
    .line 70
    const/4 v7, 0x0

    .line 71
    move-object v1, v0

    .line 72
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/qs/bar/micmode/StandardCallItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    new-instance v0, Lcom/android/systemui/qs/bar/micmode/FullSpectrumVoipItem;

    .line 77
    .line 78
    const v2, 0x7f130f69

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    const/4 v10, 0x0

    .line 86
    const/4 v11, 0x0

    .line 87
    const/4 v12, 0x0

    .line 88
    const/16 v13, 0xe

    .line 89
    .line 90
    const/4 v14, 0x0

    .line 91
    move-object v8, v0

    .line 92
    invoke-direct/range {v8 .. v14}, Lcom/android/systemui/qs/bar/micmode/FullSpectrumVoipItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    new-instance v0, Lcom/android/systemui/qs/bar/micmode/VoiceFocusVoipItem;

    .line 97
    .line 98
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const/4 v3, 0x0

    .line 103
    const/4 v4, 0x0

    .line 104
    const/4 v5, 0x0

    .line 105
    const/16 v6, 0xe

    .line 106
    .line 107
    const/4 v7, 0x0

    .line 108
    move-object v1, v0

    .line 109
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/qs/bar/micmode/VoiceFocusVoipItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    return-object v0
.end method
