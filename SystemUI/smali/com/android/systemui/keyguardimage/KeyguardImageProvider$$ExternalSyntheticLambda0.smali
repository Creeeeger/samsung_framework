.class public final synthetic Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

.field public final synthetic f$2:Ljava/util/concurrent/BlockingDeque;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Ljava/util/concurrent/BlockingDeque;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/BlockingDeque;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/BlockingDeque;

    .line 14
    .line 15
    sget v2, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->$r8$clinit:I

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    :try_start_0
    new-instance v2, Lcom/android/systemui/keyguardimage/ClockImageCreator;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-direct {v2, v0}, Lcom/android/systemui/keyguardimage/ClockImageCreator;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/keyguardimage/ClockImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-interface {p0, v0}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, [Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    .line 48
    .line 49
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/BlockingDeque;

    .line 50
    .line 51
    sget v2, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->$r8$clinit:I

    .line 52
    .line 53
    const/4 v2, -0x1

    .line 54
    invoke-static {v2}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    new-instance v3, Ljava/util/LinkedList;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 61
    .line 62
    .line 63
    :try_start_1
    array-length v4, v0

    .line 64
    const/4 v5, 0x0

    .line 65
    :goto_2
    if-ge v5, v4, :cond_1

    .line 66
    .line 67
    aget-object v6, v0, v5

    .line 68
    .line 69
    new-instance v7, Landroid/graphics/Point;

    .line 70
    .line 71
    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-interface {v6, v1, v7}, Lcom/android/systemui/keyguardimage/ImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    if-eqz v8, :cond_0

    .line 79
    .line 80
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    if-nez v8, :cond_0

    .line 85
    .line 86
    new-instance v8, Landroid/util/Pair;

    .line 87
    .line 88
    invoke-interface {v6, v1, v7}, Lcom/android/systemui/keyguardimage/ImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    .line 89
    .line 90
    .line 91
    move-result-object v6

    .line 92
    invoke-direct {v8, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_1
    invoke-interface {p0, v3}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    .line 103
    .line 104
    goto :goto_3

    .line 105
    :catch_1
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    :goto_3
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    const-string v0, "KeyguardImageProvider"

    .line 122
    .line 123
    const-string v1, "%d images were created"

    .line 124
    .line 125
    invoke-static {v2, v0, v1, p0}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
