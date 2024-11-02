.class public final Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic $th:I

.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardShortcutManager;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 2
    .line 3
    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->$th:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 4
    .line 5
    aget-object v0, v0, p1

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    sget-object v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->EMPTY_CONFIG:Lcom/android/systemui/statusbar/KeyguardShortcutManager$Companion$EMPTY_CONFIG$1;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 20
    .line 21
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->$th:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isTaskTypeEnabled(I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 30
    .line 31
    aget-object p1, v1, p1

    .line 32
    .line 33
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 37
    .line 38
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 45
    .line 46
    iget-object v3, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 47
    .line 48
    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->$th:I

    .line 49
    .line 50
    aget-object v3, v3, v4

    .line 51
    .line 52
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v3}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getPickerIconResourceId()I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    const/4 v3, 0x0

    .line 64
    const/4 v4, 0x1

    .line 65
    invoke-virtual {v1, v3, v2, v4, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->getBlendingFgIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 70
    .line 71
    iget v3, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mIconSize:I

    .line 72
    .line 73
    invoke-virtual {v1, v2, v3, v3}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iput-object v1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 80
    .line 81
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 82
    .line 83
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->$th:I

    .line 84
    .line 85
    aget-object p1, p1, v1

    .line 86
    .line 87
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 91
    .line 92
    iget-object v2, v1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mContext:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 99
    .line 100
    iget-object v3, v3, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 101
    .line 102
    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->$th:I

    .line 103
    .line 104
    aget-object v3, v3, v5

    .line 105
    .line 106
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v3}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getPickerIconResourceId()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->access$getFgPanelIcon(Lcom/android/systemui/statusbar/KeyguardShortcutManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iput-object v1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mPanelDrawable:Landroid/graphics/drawable/Drawable;

    .line 122
    .line 123
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 124
    .line 125
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->$th:I

    .line 126
    .line 127
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->isPanelIconTransitionNeeded(I)Z

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-eqz p1, :cond_2

    .line 132
    .line 133
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 134
    .line 135
    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;

    .line 136
    .line 137
    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->$th:I

    .line 138
    .line 139
    aget-object p1, p1, v1

    .line 140
    .line 141
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager$updateShortcutIcon$1$1;->this$0:Lcom/android/systemui/statusbar/KeyguardShortcutManager;

    .line 145
    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->mContext:Landroid/content/Context;

    .line 147
    .line 148
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    if-eqz v0, :cond_1

    .line 153
    .line 154
    const v0, 0x7f080799

    .line 155
    .line 156
    .line 157
    goto :goto_0

    .line 158
    :cond_1
    const v0, 0x7f08079a

    .line 159
    .line 160
    .line 161
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/KeyguardShortcutManager;->access$getFgPanelIcon(Lcom/android/systemui/statusbar/KeyguardShortcutManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    iput-object p0, p1, Lcom/android/systemui/statusbar/KeyguardShortcutManager$ShortcutData;->mPanelTransitDrawable:Landroid/graphics/drawable/Drawable;

    .line 170
    .line 171
    :cond_2
    return v4

    .line 172
    :cond_3
    :goto_1
    const-string/jumbo p0, "updateShortcutsIcon : "

    .line 173
    .line 174
    .line 175
    const-string v0, " is invalid task name"

    .line 176
    .line 177
    const-string v1, "KeyguardShortcutManager"

    .line 178
    .line 179
    invoke-static {p0, p1, v0, v1}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const/4 p0, 0x0

    .line 183
    return p0
.end method
