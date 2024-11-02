.class public final Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;
.super Lcom/android/systemui/navigationbar/NavigationBarInflaterView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;

.field public static final buttonSpace:Ljava/lang/String;

.field public static final centerGestureHint:Ljava/lang/String;

.field public static final extraBack:Ljava/lang/String;

.field public static final keymargin:Ljava/lang/String;

.field public static final leftGestureHint:Ljava/lang/String;

.field public static final leftRemoteView:Ljava/lang/String;

.field public static final leftstr:Ljava/lang/String;

.field public static final navkey:Ljava/lang/String;

.field public static final pin:Ljava/lang/String;

.field public static final rightGestureHint:Ljava/lang/String;

.field public static final rightRemoteView:Ljava/lang/String;

.field public static final rightstr:Ljava/lang/String;

.field public static final space:Ljava/lang/String;

.field public static final taskStack:Ljava/lang/String;


# instance fields
.field public final displayId:I

.field public final navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;

    .line 8
    .line 9
    const-string/jumbo v0, "space"

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->space:Ljava/lang/String;

    .line 13
    .line 14
    const-string v0, "left"

    .line 15
    .line 16
    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftstr:Ljava/lang/String;

    .line 17
    .line 18
    const-string/jumbo v0, "right"

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightstr:Ljava/lang/String;

    .line 22
    .line 23
    const-string/jumbo v0, "pin"

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->pin:Ljava/lang/String;

    .line 27
    .line 28
    const-string/jumbo v0, "navkey"

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navkey:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "gap"

    .line 34
    .line 35
    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->keymargin:Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "extra_back"

    .line 38
    .line 39
    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->extraBack:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "hint_left"

    .line 42
    .line 43
    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftGestureHint:Ljava/lang/String;

    .line 44
    .line 45
    const-string v0, "hint_center"

    .line 46
    .line 47
    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->centerGestureHint:Ljava/lang/String;

    .line 48
    .line 49
    const-string v0, "hint_right"

    .line 50
    .line 51
    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightGestureHint:Ljava/lang/String;

    .line 52
    .line 53
    const-string v0, "left_remote_view"

    .line 54
    .line 55
    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftRemoteView:Ljava/lang/String;

    .line 56
    .line 57
    const-string/jumbo v0, "right_remote_view"

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightRemoteView:Ljava/lang/String;

    .line 61
    .line 62
    const-string/jumbo v0, "task_stack"

    .line 63
    .line 64
    .line 65
    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->taskStack:Ljava/lang/String;

    .line 66
    .line 67
    const-string v0, "button_space"

    .line 68
    .line 69
    sput-object v0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->buttonSpace:Ljava/lang/String;

    .line 70
    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->displayId:I

    .line 9
    .line 10
    const-class p2, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 17
    .line 18
    iput-object p2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 19
    .line 20
    check-cast p2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 21
    .line 22
    invoke-virtual {p2, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final addSidePadding(Landroid/view/View;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarSidePadding;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarSidePadding;-><init>(Z)V

    .line 6
    .line 7
    .line 8
    iget p2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->displayId:I

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 16
    .line 17
    invoke-virtual {v0, p0, v1, p2, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Ljava/lang/Number;

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    invoke-virtual {p1, p0, v2, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftstr:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    sget-object v1, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightstr:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_1
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftstr:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    const/4 p1, 0x0

    .line 39
    if-eqz p0, :cond_2

    .line 40
    .line 41
    const p0, 0x7f0d0307

    .line 42
    .line 43
    .line 44
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :cond_2
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightstr:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    const p0, 0x7f0d030f

    .line 59
    .line 60
    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_3
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftGestureHint:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    if-eqz p0, :cond_4

    .line 74
    .line 75
    const p0, 0x7f0d0110

    .line 76
    .line 77
    .line 78
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    goto/16 :goto_0

    .line 83
    .line 84
    :cond_4
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->centerGestureHint:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    if-eqz p0, :cond_5

    .line 91
    .line 92
    const p0, 0x7f0d010f

    .line 93
    .line 94
    .line 95
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :cond_5
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightGestureHint:Ljava/lang/String;

    .line 102
    .line 103
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_6

    .line 108
    .line 109
    const p0, 0x7f0d0111

    .line 110
    .line 111
    .line 112
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    goto :goto_0

    .line 117
    :cond_6
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->extraBack:Ljava/lang/String;

    .line 118
    .line 119
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    if-eqz p0, :cond_7

    .line 124
    .line 125
    const p0, 0x7f0d0046

    .line 126
    .line 127
    .line 128
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    goto :goto_0

    .line 133
    :cond_7
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->pin:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-eqz p0, :cond_8

    .line 140
    .line 141
    const p0, 0x7f0d0233

    .line 142
    .line 143
    .line 144
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    goto :goto_0

    .line 149
    :cond_8
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->keymargin:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    const v1, 0x7f0d0232

    .line 156
    .line 157
    .line 158
    if-eqz p0, :cond_9

    .line 159
    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    goto :goto_0

    .line 165
    :cond_9
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->taskStack:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result p0

    .line 171
    if-eqz p0, :cond_a

    .line 172
    .line 173
    const p0, 0x7f0d0236

    .line 174
    .line 175
    .line 176
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object p0

    .line 180
    goto :goto_0

    .line 181
    :cond_a
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->buttonSpace:Ljava/lang/String;

    .line 182
    .line 183
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p0

    .line 187
    if-eqz p0, :cond_b

    .line 188
    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    goto :goto_0

    .line 194
    :cond_b
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navkey:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result p0

    .line 200
    if-eqz p0, :cond_c

    .line 201
    .line 202
    const p0, 0x7f0d0231

    .line 203
    .line 204
    .line 205
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    goto :goto_0

    .line 210
    :cond_c
    move-object p0, p1

    .line 211
    :goto_0
    if-eqz p0, :cond_e

    .line 212
    .line 213
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 214
    .line 215
    .line 216
    move-result p0

    .line 217
    const/4 p1, 0x0

    .line 218
    invoke-virtual {p3, p0, p2, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object p0

    .line 222
    sget-object p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navkey:Ljava/lang/String;

    .line 223
    .line 224
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    if-eqz p1, :cond_d

    .line 229
    .line 230
    move-object p1, p0

    .line 231
    check-cast p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    .line 232
    .line 233
    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->extractImage(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setId(I)V

    .line 242
    .line 243
    .line 244
    invoke-static {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->extractKeycode(Ljava/lang/String;)I

    .line 245
    .line 246
    .line 247
    move-result p2

    .line 248
    iput p2, p1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->mCode:I

    .line 249
    .line 250
    :cond_d
    return-object p0

    .line 251
    :cond_e
    return-object p1
.end method

.method public final getDefaultLayout()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 2
    .line 3
    new-instance v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetDefaultLayout;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v1, v4, v2, v3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetDefaultLayout;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->displayId:I

    .line 12
    .line 13
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    const v4, 0x7f130370

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 23
    .line 24
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/lang/String;

    .line 29
    .line 30
    return-object p0
.end method

.method public final inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V
    .locals 5

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 7
    .line 8
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->createView(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p0, v0, p1, p3, p4}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->applySize(Landroid/view/View;Ljava/lang/String;ZZ)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    invoke-virtual {p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 24
    .line 25
    new-instance v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->extractButton(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v2, p1, p3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;-><init>(Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    iget p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->displayId:I

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    const v4, 0x7f0709a9

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 56
    .line 57
    invoke-virtual {v1, p0, v2, p1, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/lang/Number;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 68
    .line 69
    if-eqz p2, :cond_2

    .line 70
    .line 71
    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {p0, p4}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->addToDispatchers(Landroid/view/View;)V

    .line 75
    .line 76
    .line 77
    if-eqz p3, :cond_3

    .line 78
    .line 79
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    .line 83
    .line 84
    :goto_1
    instance-of p2, p4, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout$ReverseRelativeLayout;

    .line 85
    .line 86
    if-eqz p2, :cond_4

    .line 87
    .line 88
    check-cast p4, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout$ReverseRelativeLayout;

    .line 89
    .line 90
    const/4 p2, 0x0

    .line 91
    invoke-virtual {p4, p2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    :cond_4
    if-eqz p1, :cond_5

    .line 96
    .line 97
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {p4, p1}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 105
    .line 106
    .line 107
    :cond_5
    if-eqz p3, :cond_6

    .line 108
    .line 109
    iput-object p4, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_6
    iput-object p4, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    .line 113
    .line 114
    :goto_2
    return-void
.end method

.method public final inflateChildren()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 7
    .line 8
    new-instance v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateLayoutID;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v2, v3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateLayoutID;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    iget v4, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->displayId:I

    .line 15
    .line 16
    const v5, 0x7f0d023a

    .line 17
    .line 18
    .line 19
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 24
    .line 25
    invoke-virtual {v1, p0, v2, v4, v5}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Number;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Landroid/widget/FrameLayout;

    .line 40
    .line 41
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 47
    .line 48
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 49
    .line 50
    new-instance v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateLayoutID;

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    invoke-direct {v2, v4}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateLayoutID;-><init>(Z)V

    .line 54
    .line 55
    .line 56
    iget v4, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->displayId:I

    .line 57
    .line 58
    const v5, 0x7f0d023b

    .line 59
    .line 60
    .line 61
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 66
    .line 67
    invoke-virtual {v1, p0, v2, v4, v5}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Landroid/widget/FrameLayout;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateAlternativeOrder()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final inflateLayout(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_3

    .line 9
    .line 10
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    const v2, 0x7f0a0719

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_0
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON_LARGE_COVER:Z

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->displayId:I

    .line 36
    .line 37
    if-ne p1, v0, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager;->states:Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;

    .line 42
    .line 43
    iget p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManager$States;->rotation:I

    .line 44
    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/view/ViewGroup;

    .line 54
    .line 55
    sget-object v3, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->space:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p0, v3, p1, v1, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 58
    .line 59
    .line 60
    sget-object v4, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftRemoteView:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {p0, v4, p1, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateRemoteViewButtons(Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    .line 63
    .line 64
    .line 65
    sget-object v5, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->keymargin:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p0, v5, p1, v1, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 68
    .line 69
    .line 70
    sget-object v6, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightRemoteView:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p0, v6, p1, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateRemoteViewButtons(Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v3, p1, v1, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 79
    .line 80
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Landroid/view/ViewGroup;

    .line 85
    .line 86
    invoke-virtual {p0, v3, p1, v0, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, v4, p1, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateRemoteViewButtons(Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v5, p1, v0, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, v6, p1, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateRemoteViewButtons(Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p0, v3, p1, v0, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateButton(Ljava/lang/String;Landroid/view/ViewGroup;ZZ)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_1
    sget-object p1, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftRemoteView:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 105
    .line 106
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    check-cast v3, Landroid/view/ViewGroup;

    .line 111
    .line 112
    invoke-virtual {p0, p1, v3, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateRemoteViewButtons(Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    .line 113
    .line 114
    .line 115
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 116
    .line 117
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    check-cast v3, Landroid/widget/LinearLayout;

    .line 122
    .line 123
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->addGravitySpacer(Landroid/widget/LinearLayout;)V

    .line 124
    .line 125
    .line 126
    sget-object v3, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightRemoteView:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 129
    .line 130
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    check-cast v4, Landroid/view/ViewGroup;

    .line 135
    .line 136
    invoke-virtual {p0, v3, v4, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateRemoteViewButtons(Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    .line 137
    .line 138
    .line 139
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 140
    .line 141
    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    check-cast v4, Landroid/view/ViewGroup;

    .line 146
    .line 147
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateRemoteViewButtons(Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    .line 148
    .line 149
    .line 150
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 151
    .line 152
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Landroid/widget/LinearLayout;

    .line 157
    .line 158
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->addGravitySpacer(Landroid/widget/LinearLayout;)V

    .line 159
    .line 160
    .line 161
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 162
    .line 163
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Landroid/view/ViewGroup;

    .line 168
    .line 169
    invoke-virtual {p0, v3, p1, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateRemoteViewButtons(Ljava/lang/String;Landroid/view/ViewGroup;Z)V

    .line 170
    .line 171
    .line 172
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->addSidePadding(Landroid/view/View;Z)V

    .line 179
    .line 180
    .line 181
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 182
    .line 183
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->addSidePadding(Landroid/view/View;Z)V

    .line 188
    .line 189
    .line 190
    :cond_3
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_STABLE_LAYOUT:Z

    .line 191
    .line 192
    if-eqz p1, :cond_4

    .line 193
    .line 194
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mHorizontal:Landroid/widget/FrameLayout;

    .line 195
    .line 196
    const v2, 0x7f0a03be

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->addSidePadding(Landroid/view/View;Z)V

    .line 204
    .line 205
    .line 206
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mVertical:Landroid/widget/FrameLayout;

    .line 207
    .line 208
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->addSidePadding(Landroid/view/View;Z)V

    .line 213
    .line 214
    .line 215
    :cond_4
    return-void
.end method

.method public final inflateRemoteViewButtons(Ljava/lang/String;Landroid/view/ViewGroup;Z)V
    .locals 7

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLandscapeInflater:Landroid/view/LayoutInflater;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 7
    .line 8
    :goto_0
    sget-object v1, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftRemoteView:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    const v1, 0x7f0d0234

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    sget-object v1, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightRemoteView:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    const v1, 0x7f0d0235

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const/4 v0, 0x0

    .line 42
    :goto_1
    if-eqz v0, :cond_7

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v3, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 49
    .line 50
    new-instance v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;

    .line 51
    .line 52
    invoke-direct {v4, p1, p3}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;-><init>(Ljava/lang/String;Z)V

    .line 53
    .line 54
    .line 55
    iget p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->displayId:I

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    const v6, 0x7f0709a9

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    .line 77
    .line 78
    invoke-virtual {v3, p0, v4, p1, v5}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ljava/lang/Number;

    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 89
    .line 90
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    .line 92
    .line 93
    if-eqz p3, :cond_3

    .line 94
    .line 95
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    .line 99
    .line 100
    :goto_2
    instance-of p2, v0, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout$ReverseRelativeLayout;

    .line 101
    .line 102
    if-eqz p2, :cond_4

    .line 103
    .line 104
    check-cast v0, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout$ReverseRelativeLayout;

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :cond_4
    if-eqz p1, :cond_5

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    invoke-virtual {v0, p1}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 117
    .line 118
    .line 119
    :cond_5
    if-eqz p3, :cond_6

    .line 120
    .line 121
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastLandscape:Landroid/view/View;

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_6
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->mLastPortrait:Landroid/view/View;

    .line 125
    .line 126
    :cond_7
    :goto_3
    return-void
.end method

.method public final updateLayoutProviderView()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateChildren()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v0, v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateOrientationViews()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->clearViews()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->getDefaultLayout()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->inflateLayout(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
