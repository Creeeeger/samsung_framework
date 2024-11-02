.class public final Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final _forceCollapseAll:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _shadeInteraction:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final forceCollapseAll:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final proxiedInput:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final shadeConfig:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final shadeInteraction:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final stateByShade:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object p2, p2, Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;->proxiedInput:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->proxiedInput:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    const v0, 0x7f070692

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const v0, 0x7f070d00

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const v0, 0x7f0711a5

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-static {v4}, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->checkInBounds(F)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const v0, 0x7f0711a6

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-static {v5}, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->checkInBounds(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    const v0, 0x7f070332

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    invoke-static {v7}, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->checkInBounds(F)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    const v0, 0x7f050054

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_0

    .line 84
    .line 85
    new-instance p2, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const v0, 0x7f070333

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    move-object v1, p2

    .line 99
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;-><init>(IIFFFF)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    new-instance p2, Lcom/android/systemui/multishade/shared/model/ShadeConfig$SingleShadeConfig;

    .line 104
    .line 105
    invoke-direct {p2, v4, v5}, Lcom/android/systemui/multishade/shared/model/ShadeConfig$SingleShadeConfig;-><init>(FF)V

    .line 106
    .line 107
    .line 108
    :goto_0
    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object p1, p0, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->shadeConfig:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 117
    .line 118
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 119
    .line 120
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iput-object p1, p0, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->_forceCollapseAll:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 125
    .line 126
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iput-object p1, p0, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->forceCollapseAll:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 131
    .line 132
    const/4 p1, 0x0

    .line 133
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iput-object p1, p0, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->_shadeInteraction:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 138
    .line 139
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->asStateFlow(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    iput-object p1, p0, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->shadeInteraction:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 144
    .line 145
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 146
    .line 147
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 148
    .line 149
    .line 150
    iput-object p1, p0, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->stateByShade:Ljava/util/Map;

    .line 151
    .line 152
    return-void
.end method

.method public static checkInBounds(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, v0, p0

    .line 3
    .line 4
    if-gtz v0, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    cmpg-float v0, p0, v0

    .line 9
    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p0, " isn\'t between 0 and 1."

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method
