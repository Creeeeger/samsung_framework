.class public final Lcom/android/systemui/shade/SecPanelExpansionStateModel;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final handler:Landroid/os/Handler;

.field public isLcdOn:Z

.field public final notifyPanelState:Ljava/util/function/Consumer;

.field public panelExpanded:Z

.field public panelFirstDepthFraction:F

.field public panelOpenState:I

.field public panelPrvOpenState:I

.field public panelSecondDepthFraction:F

.field public statusBarState:I

.field public wasUnlockedWhilePanelOpening:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/shade/SecPanelExpansionStateModel$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/shade/SecPanelExpansionStateModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->notifyPanelState:Ljava/util/function/Consumer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->statusBarState:I

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->isLcdOn:Z

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final setLcdOn(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->isLcdOn:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->isLcdOn:Z

    .line 6
    .line 7
    iget v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->statusBarState:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelOpenState:I

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-ne v0, v2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    if-nez p1, :cond_1

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->updatePanelOpenState()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public final setStatusBarState(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->statusBarState:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_2

    .line 4
    .line 5
    iput p1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->statusBarState:I

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget v2, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelOpenState:I

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    move v2, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->setWasUnlockedWhilePanelOpening(Z)V

    .line 18
    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget p1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelFirstDepthFraction:F

    .line 25
    .line 26
    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    .line 28
    cmpl-float p1, p1, v0

    .line 29
    .line 30
    if-ltz p1, :cond_2

    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    const-string v0, " @ POST updatePanelOpenState(KEYGUARD > SHADE) "

    .line 35
    .line 36
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string v0, "SecPanelExpansionStateModel"

    .line 47
    .line 48
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    new-instance p1, Lcom/android/systemui/shade/SecPanelExpansionStateModel$statusBarState$1;

    .line 52
    .line 53
    invoke-direct {p1, p0}, Lcom/android/systemui/shade/SecPanelExpansionStateModel$statusBarState$1;-><init>(Lcom/android/systemui/shade/SecPanelExpansionStateModel;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->handler:Landroid/os/Handler;

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->updatePanelOpenState()V

    .line 63
    .line 64
    .line 65
    :cond_2
    :goto_1
    return-void
.end method

.method public final setWasUnlockedWhilePanelOpening(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->wasUnlockedWhilePanelOpening:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->wasUnlockedWhilePanelOpening:Z

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v1, "wasUnlockedWhilePanelOpening:"

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, " "

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "SecPanelExpansionStateModel"

    .line 31
    .line 32
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelOpenState:I

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    const-string v1, "NOT INITIALIZED"

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v1, "STATE_OPEN"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const-string v1, "STATE_ANIMATING"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const-string v1, "STATE_CLOSED"

    .line 26
    .line 27
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v3, "<"

    .line 30
    .line 31
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ">"

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    new-instance v1, Ljava/text/DecimalFormat;

    .line 50
    .line 51
    const-string v2, "#.##"

    .line 52
    .line 53
    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget v2, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelFirstDepthFraction:F

    .line 57
    .line 58
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v4, " 1stFrc:"

    .line 69
    .line 70
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget v2, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelSecondDepthFraction:F

    .line 84
    .line 85
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    const-string v3, " 2ndFrc:"

    .line 96
    .line 97
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-boolean v1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelExpanded:Z

    .line 111
    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v3, " panelExpanded:"

    .line 115
    .line 116
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-boolean v1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->isLcdOn:Z

    .line 130
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v3, " lcdOn:"

    .line 134
    .line 135
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget v1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->statusBarState:I

    .line 149
    .line 150
    invoke-static {v1}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v3, " Bar:"

    .line 157
    .line 158
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-boolean p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->wasUnlockedWhilePanelOpening:Z

    .line 172
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v2, " wasUnlockedWhilePanelOpening:"

    .line 176
    .line 177
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    return-object p0
.end method

.method public final updatePanelOpenState()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->isLcdOn:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    iget v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->statusBarState:I

    .line 11
    .line 12
    const/high16 v4, 0x3f800000    # 1.0f

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz v0, :cond_5

    .line 16
    .line 17
    if-eq v0, v1, :cond_2

    .line 18
    .line 19
    if-eq v0, v2, :cond_1

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_1
    iget v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelFirstDepthFraction:F

    .line 23
    .line 24
    cmpg-float v0, v0, v4

    .line 25
    .line 26
    if-gez v0, :cond_9

    .line 27
    .line 28
    iget v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelSecondDepthFraction:F

    .line 29
    .line 30
    cmpg-float v0, v0, v5

    .line 31
    .line 32
    if-gtz v0, :cond_9

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelFirstDepthFraction:F

    .line 36
    .line 37
    cmpl-float v0, v0, v4

    .line 38
    .line 39
    if-ltz v0, :cond_3

    .line 40
    .line 41
    iget v6, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelSecondDepthFraction:F

    .line 42
    .line 43
    cmpg-float v6, v6, v5

    .line 44
    .line 45
    if-gtz v6, :cond_3

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_3
    if-ltz v0, :cond_4

    .line 49
    .line 50
    iget v6, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelSecondDepthFraction:F

    .line 51
    .line 52
    cmpl-float v4, v6, v4

    .line 53
    .line 54
    if-ltz v4, :cond_4

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    if-ltz v0, :cond_b

    .line 58
    .line 59
    iget v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelSecondDepthFraction:F

    .line 60
    .line 61
    cmpl-float v0, v0, v5

    .line 62
    .line 63
    if-lez v0, :cond_b

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_5
    iget v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelFirstDepthFraction:F

    .line 67
    .line 68
    cmpg-float v6, v0, v5

    .line 69
    .line 70
    if-ltz v6, :cond_b

    .line 71
    .line 72
    iget v7, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelSecondDepthFraction:F

    .line 73
    .line 74
    cmpg-float v5, v7, v5

    .line 75
    .line 76
    if-gez v5, :cond_6

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_6
    if-gtz v6, :cond_7

    .line 80
    .line 81
    if-gtz v5, :cond_7

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_7
    cmpl-float v0, v0, v4

    .line 85
    .line 86
    if-gez v0, :cond_8

    .line 87
    .line 88
    cmpl-float v0, v7, v4

    .line 89
    .line 90
    if-ltz v0, :cond_a

    .line 91
    .line 92
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelExpanded:Z

    .line 93
    .line 94
    if-eqz v0, :cond_a

    .line 95
    .line 96
    :cond_9
    :goto_0
    move v0, v2

    .line 97
    goto :goto_3

    .line 98
    :cond_a
    :goto_1
    move v0, v1

    .line 99
    goto :goto_3

    .line 100
    :cond_b
    :goto_2
    move v0, v3

    .line 101
    :goto_3
    iget v4, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelOpenState:I

    .line 102
    .line 103
    if-eq v4, v0, :cond_f

    .line 104
    .line 105
    invoke-virtual {p0, v3}, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->setWasUnlockedWhilePanelOpening(Z)V

    .line 106
    .line 107
    .line 108
    if-eqz v0, :cond_e

    .line 109
    .line 110
    if-eq v0, v1, :cond_d

    .line 111
    .line 112
    if-eq v0, v2, :cond_c

    .line 113
    .line 114
    const-string v1, "NOT INITIALIZED"

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_c
    const-string v1, "STATE_OPEN"

    .line 118
    .line 119
    goto :goto_4

    .line 120
    :cond_d
    const-string v1, "STATE_ANIMATING"

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_e
    const-string v1, "STATE_CLOSED"

    .line 124
    .line 125
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v3, "!!! NOTIFY !!! PanelOpenState is changed to <"

    .line 128
    .line 129
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v1, "> from "

    .line 136
    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const-string v2, "SecPanelExpansionStateModel"

    .line 148
    .line 149
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .line 151
    .line 152
    iget v1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelOpenState:I

    .line 153
    .line 154
    iput v1, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelPrvOpenState:I

    .line 155
    .line 156
    iput v0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->panelOpenState:I

    .line 157
    .line 158
    iget-object p0, p0, Lcom/android/systemui/shade/SecPanelExpansionStateModel;->notifyPanelState:Ljava/util/function/Consumer;

    .line 159
    .line 160
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_f
    return-void
.end method
