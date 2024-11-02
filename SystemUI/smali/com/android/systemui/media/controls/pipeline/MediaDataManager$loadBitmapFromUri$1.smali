.class public final Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadBitmapFromUri$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaDataManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadBitmapFromUri$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    new-instance v0, Landroid/util/Pair;

    .line 18
    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Landroid/util/Pair;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadBitmapFromUri$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 33
    .line 34
    iget v2, v2, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->artworkWidth:I

    .line 35
    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$loadBitmapFromUri$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 41
    .line 42
    iget p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->artworkHeight:I

    .line 43
    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v1, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p0, Ljava/lang/Integer;

    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    int-to-float p0, p0

    .line 60
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v0, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    int-to-float v0, v0

    .line 69
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v2, Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    int-to-float v2, v2

    .line 78
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v1, Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    int-to-float v1, v1

    .line 87
    const/4 v3, 0x0

    .line 88
    cmpl-float v4, p0, v3

    .line 89
    .line 90
    if-eqz v4, :cond_2

    .line 91
    .line 92
    cmpl-float v4, v0, v3

    .line 93
    .line 94
    if-eqz v4, :cond_2

    .line 95
    .line 96
    cmpl-float v4, v2, v3

    .line 97
    .line 98
    if-eqz v4, :cond_2

    .line 99
    .line 100
    cmpl-float v4, v1, v3

    .line 101
    .line 102
    if-nez v4, :cond_0

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_0
    div-float v4, p0, v0

    .line 106
    .line 107
    div-float v5, v2, v1

    .line 108
    .line 109
    cmpl-float v4, v4, v5

    .line 110
    .line 111
    if-lez v4, :cond_1

    .line 112
    .line 113
    div-float/2addr v1, v0

    .line 114
    goto :goto_1

    .line 115
    :cond_1
    div-float v1, v2, p0

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_2
    :goto_0
    move v1, v3

    .line 119
    :goto_1
    cmpg-float p0, v1, v3

    .line 120
    .line 121
    const/4 v0, 0x1

    .line 122
    if-nez p0, :cond_3

    .line 123
    .line 124
    move p0, v0

    .line 125
    goto :goto_2

    .line 126
    :cond_3
    const/4 p0, 0x0

    .line 127
    :goto_2
    if-nez p0, :cond_4

    .line 128
    .line 129
    const/high16 p0, 0x3f800000    # 1.0f

    .line 130
    .line 131
    cmpg-float p0, v1, p0

    .line 132
    .line 133
    if-gez p0, :cond_4

    .line 134
    .line 135
    int-to-float p0, p3

    .line 136
    mul-float/2addr p0, v1

    .line 137
    float-to-int p0, p0

    .line 138
    int-to-float p2, p2

    .line 139
    mul-float/2addr v1, p2

    .line 140
    float-to-int p2, v1

    .line 141
    invoke-virtual {p1, p0, p2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    .line 142
    .line 143
    .line 144
    :cond_4
    invoke-virtual {p1, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 145
    .line 146
    .line 147
    return-void
.end method
