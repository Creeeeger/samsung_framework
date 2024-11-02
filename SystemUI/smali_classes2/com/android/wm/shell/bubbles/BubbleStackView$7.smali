.class public final Lcom/android/wm/shell/bubbles/BubbleStackView$7;
.super Lcom/android/wm/shell/bubbles/RelativeTouchListener;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/RelativeTouchListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 10

    .line 1
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    .line 3
    iget-boolean v0, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 18
    .line 19
    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Lcom/android/wm/shell/bubbles/StackEducationView;->hide(Z)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 30
    .line 31
    iget-object v1, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 32
    .line 33
    iget-boolean v1, v1, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 34
    .line 35
    if-eqz v1, :cond_3

    .line 36
    .line 37
    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mManageEduView:Lcom/android/wm/shell/bubbles/ManageEducationView;

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/ManageEducationView;->hide()V

    .line 42
    .line 43
    .line 44
    :cond_2
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 45
    .line 46
    iget-object p2, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 47
    .line 48
    iget-object v0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->cancelAnimationsOnView(Landroid/view/View;)V

    .line 51
    .line 52
    .line 53
    const v0, 0x46fffe00    # 32767.0f

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationZ(F)V

    .line 57
    .line 58
    .line 59
    new-instance v7, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    .line 60
    .line 61
    iget-object v0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 68
    .line 69
    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    .line 70
    .line 71
    move-object v0, v7

    .line 72
    move-object v1, p2

    .line 73
    move-object v3, p1

    .line 74
    move-object v6, p1

    .line 75
    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;-><init>(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;Landroid/content/Context;Landroid/view/View;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    iput-object v7, p2, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideCurrentInputMethod()V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 86
    .line 87
    iget-object p2, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 88
    .line 89
    iget-object p2, p2, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    .line 90
    .line 91
    iput-object p2, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 92
    .line 93
    goto/16 :goto_0

    .line 94
    .line 95
    :cond_3
    iget-object p1, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 103
    .line 104
    .line 105
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    .line 106
    .line 107
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->cancelStackPositionAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 108
    .line 109
    .line 110
    iget-object v2, p1, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 111
    .line 112
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    .line 113
    .line 114
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 118
    .line 119
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->mEndActionForProperty:Ljava/util/HashMap;

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 125
    .line 126
    iget-object v2, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleContainer:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 129
    .line 130
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->setActiveController(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;)V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->hideFlyoutImmediate()V

    .line 136
    .line 137
    .line 138
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 139
    .line 140
    iget-object v8, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 141
    .line 142
    iget-object v2, v8, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    .line 143
    .line 144
    if-nez v2, :cond_4

    .line 145
    .line 146
    new-instance v9, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    .line 147
    .line 148
    iget-object v2, v8, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 149
    .line 150
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    new-instance v6, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;

    .line 155
    .line 156
    invoke-direct {v6, v8, p2, v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)V

    .line 157
    .line 158
    .line 159
    new-instance v7, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;

    .line 160
    .line 161
    invoke-direct {v7, v8, v1, v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$StackPositionProperty;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;I)V

    .line 162
    .line 163
    .line 164
    move-object v2, v9

    .line 165
    move-object v3, v8

    .line 166
    move-object v5, v8

    .line 167
    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroid/content/Context;Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 168
    .line 169
    .line 170
    iput-object v9, v8, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    .line 171
    .line 172
    :cond_4
    iget-object p2, v8, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 173
    .line 174
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    iget-object v1, v8, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    .line 183
    .line 184
    iget v1, v1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetMinVelocity:F

    .line 185
    .line 186
    const-string v2, "bubble_dismiss_fling_min_velocity"

    .line 187
    .line 188
    invoke-static {p2, v2, v1}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    iget-object v2, v8, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    .line 193
    .line 194
    iget v2, v2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->stickToTargetMaxXVelocity:F

    .line 195
    .line 196
    const-string v3, "bubble_dismiss_stick_max_velocity"

    .line 197
    .line 198
    invoke-static {p2, v3, v2}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    iget-object v3, v8, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    .line 203
    .line 204
    iget v3, v3, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetWidthPercent:F

    .line 205
    .line 206
    const-string v4, "bubble_dismiss_target_width_percent"

    .line 207
    .line 208
    invoke-static {p2, v4, v3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 209
    .line 210
    .line 211
    move-result p2

    .line 212
    iget-object v3, v8, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mMagnetizedStack:Lcom/android/wm/shell/bubbles/animation/StackAnimationController$2;

    .line 213
    .line 214
    iput v1, v3, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetMinVelocity:F

    .line 215
    .line 216
    iput v2, v3, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->stickToTargetMaxXVelocity:F

    .line 217
    .line 218
    iput p2, v3, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->flingToTargetWidthPercent:F

    .line 219
    .line 220
    iput-object v3, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 221
    .line 222
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 223
    .line 224
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 225
    .line 226
    iget-object p1, p1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    .line 227
    .line 228
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 229
    .line 230
    .line 231
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 232
    .line 233
    iget-object p2, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagnetizedObject:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;

    .line 234
    .line 235
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mMagneticTarget:Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;

    .line 236
    .line 237
    iget-object p2, p2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->associatedTargets:Ljava/util/ArrayList;

    .line 238
    .line 239
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 243
    .line 244
    .line 245
    new-instance p2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;

    .line 246
    .line 247
    invoke-direct {p2, p1}, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget$updateLocationOnScreen$1;-><init>(Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;)V

    .line 248
    .line 249
    .line 250
    iget-object p1, p1, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    .line 251
    .line 252
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 253
    .line 254
    .line 255
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 256
    .line 257
    const/4 p2, 0x1

    .line 258
    iput-boolean p2, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsDraggingStack:Z

    .line 259
    .line 260
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateTemporarilyInvisibleAnimation(Z)V

    .line 261
    .line 262
    .line 263
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 264
    .line 265
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    return-void
.end method

.method public final onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 4
    .line 5
    if-nez v1, :cond_13

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_9

    .line 12
    .line 13
    :cond_0
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 14
    .line 15
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/DismissView;->isShowing:Z

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const/4 v3, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iput-boolean v3, v0, Lcom/android/wm/shell/bubbles/DismissView;->isShowing:Z

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/DismissView;->resetCircle()V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/DismissView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 32
    .line 33
    iget-object v5, v0, Lcom/android/wm/shell/bubbles/DismissView;->GRADIENT_ALPHA:Lcom/android/wm/shell/bubbles/DismissView$GRADIENT_ALPHA$1;

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    const/16 v7, 0xff

    .line 40
    .line 41
    filled-new-array {v6, v7}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-static {v1, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-wide v5, v0, Lcom/android/wm/shell/bubbles/DismissView;->DISMISS_SCRIM_FADE_MS:J

    .line 50
    .line 51
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/DismissView;->animator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/DismissView;->animator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 63
    .line 64
    new-instance v5, Lcom/android/wm/shell/bubbles/DismissView$show$1;

    .line 65
    .line 66
    invoke-direct {v5, v0}, Lcom/android/wm/shell/bubbles/DismissView$show$1;-><init>(Lcom/android/wm/shell/bubbles/DismissView;)V

    .line 67
    .line 68
    .line 69
    filled-new-array {v5}, [Lkotlin/jvm/functions/Function0;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    iget-object v6, v1, Lcom/android/wm/shell/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-static {v5}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 80
    .line 81
    .line 82
    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/DismissView;->spring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 85
    .line 86
    invoke-virtual {v1, v5, v2, v2, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 90
    .line 91
    .line 92
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 93
    .line 94
    iget-boolean v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 95
    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 99
    .line 100
    if-eqz v1, :cond_3

    .line 101
    .line 102
    iget-boolean v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    .line 103
    .line 104
    if-nez v5, :cond_3

    .line 105
    .line 106
    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getExpandedView()Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-nez v1, :cond_2

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    iput-boolean v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewTemporarilyHidden:Z

    .line 114
    .line 115
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewContainerMatrix:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    .line 116
    .line 117
    invoke-static {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    sget-object v5, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_X:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$1;

    .line 122
    .line 123
    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 124
    .line 125
    const v7, 0x43e0ffff    # 449.99997f

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v5, v7, v2, v6}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 129
    .line 130
    .line 131
    sget-object v5, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;->SCALE_Y:Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix$2;

    .line 132
    .line 133
    iget-object v6, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScaleOutSpringConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 134
    .line 135
    invoke-virtual {v1, v5, v7, v2, v6}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 136
    .line 137
    .line 138
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda11;

    .line 139
    .line 140
    invoke-direct {v2, v0, v4}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda11;-><init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V

    .line 141
    .line 142
    .line 143
    iget-object v5, v1, Lcom/android/wm/shell/animation/PhysicsAnimator;->updateListeners:Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 149
    .line 150
    .line 151
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedViewAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 154
    .line 155
    .line 156
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 157
    .line 158
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 167
    .line 168
    iget-object v5, v2, Lcom/android/wm/shell/bubbles/DismissView;->dismissArea:Landroid/graphics/Rect;

    .line 169
    .line 170
    iget v6, v5, Landroid/graphics/Rect;->left:I

    .line 171
    .line 172
    int-to-float v6, v6

    .line 173
    cmpg-float v6, v6, v1

    .line 174
    .line 175
    if-gez v6, :cond_4

    .line 176
    .line 177
    iget v6, v5, Landroid/graphics/Rect;->right:I

    .line 178
    .line 179
    int-to-float v6, v6

    .line 180
    cmpl-float v1, v6, v1

    .line 181
    .line 182
    if-lez v1, :cond_4

    .line 183
    .line 184
    iget v1, v5, Landroid/graphics/Rect;->top:I

    .line 185
    .line 186
    int-to-float v1, v1

    .line 187
    cmpg-float v1, v1, p2

    .line 188
    .line 189
    if-gez v1, :cond_4

    .line 190
    .line 191
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 192
    .line 193
    int-to-float v1, v1

    .line 194
    cmpl-float p2, v1, p2

    .line 195
    .line 196
    if-lez p2, :cond_4

    .line 197
    .line 198
    move p2, v3

    .line 199
    goto :goto_2

    .line 200
    :cond_4
    move p2, v4

    .line 201
    :goto_2
    iget-boolean v1, v2, Lcom/android/wm/shell/bubbles/DismissView;->isBeingEntered:Z

    .line 202
    .line 203
    if-eq v1, p2, :cond_5

    .line 204
    .line 205
    iput-boolean p2, v2, Lcom/android/wm/shell/bubbles/DismissView;->isBeingEntered:Z

    .line 206
    .line 207
    move p2, v3

    .line 208
    goto :goto_3

    .line 209
    :cond_5
    move p2, v4

    .line 210
    :goto_3
    if-eqz p2, :cond_6

    .line 211
    .line 212
    iget-boolean p2, v2, Lcom/android/wm/shell/bubbles/DismissView;->isBeingEntered:Z

    .line 213
    .line 214
    invoke-virtual {v0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateDismissBubble(Landroid/view/View;Z)V

    .line 215
    .line 216
    .line 217
    move p2, v3

    .line 218
    goto :goto_4

    .line 219
    :cond_6
    move p2, v4

    .line 220
    :goto_4
    if-eqz p2, :cond_7

    .line 221
    .line 222
    return-void

    .line 223
    :cond_7
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 224
    .line 225
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 226
    .line 227
    .line 228
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 229
    .line 230
    invoke-virtual {p2, v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBubbleShadows(Z)V

    .line 231
    .line 232
    .line 233
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 234
    .line 235
    iget-object v0, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 236
    .line 237
    iget-boolean v0, v0, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 238
    .line 239
    if-eqz v0, :cond_e

    .line 240
    .line 241
    iget-object p0, p2, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 242
    .line 243
    add-float/2addr p3, p5

    .line 244
    add-float/2addr p4, p6

    .line 245
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    .line 246
    .line 247
    if-nez p2, :cond_8

    .line 248
    .line 249
    goto/16 :goto_9

    .line 250
    .line 251
    :cond_8
    iget-boolean p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 252
    .line 253
    if-eqz p2, :cond_a

    .line 254
    .line 255
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 256
    .line 257
    sget-object p5, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 258
    .line 259
    sget-object p6, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    .line 260
    .line 261
    filled-new-array {p5, p6}, [Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 262
    .line 263
    .line 264
    move-result-object p6

    .line 265
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    .line 267
    .line 268
    invoke-static {p1, p6}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;->arePropertiesAnimatingOnView(Landroid/view/View;[Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)Z

    .line 269
    .line 270
    .line 271
    move-result p2

    .line 272
    if-eqz p2, :cond_9

    .line 273
    .line 274
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    .line 275
    .line 276
    iget-object p2, p2, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->underlyingObject:Ljava/lang/Object;

    .line 277
    .line 278
    check-cast p2, Landroid/view/View;

    .line 279
    .line 280
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 281
    .line 282
    .line 283
    move-result-object p2

    .line 284
    new-array p6, v4, [Ljava/lang/Runnable;

    .line 285
    .line 286
    const/4 v0, 0x0

    .line 287
    iput-object v0, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 288
    .line 289
    invoke-virtual {p2, p5, p3, p6}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)V

    .line 290
    .line 291
    .line 292
    new-array p5, v4, [Ljava/lang/Runnable;

    .line 293
    .line 294
    invoke-virtual {p2, p4, p5}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)V

    .line 295
    .line 296
    .line 297
    const p5, 0x461c4000    # 10000.0f

    .line 298
    .line 299
    .line 300
    iput p5, p2, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    .line 301
    .line 302
    new-array p5, v4, [Ljava/lang/Runnable;

    .line 303
    .line 304
    invoke-virtual {p2, p5}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 305
    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_9
    iput-boolean v4, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 309
    .line 310
    :cond_a
    :goto_5
    iget-boolean p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mSpringingBubbleToTouch:Z

    .line 311
    .line 312
    if-nez p2, :cond_b

    .line 313
    .line 314
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    .line 315
    .line 316
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationX(F)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationY(F)V

    .line 323
    .line 324
    .line 325
    :cond_b
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 326
    .line 327
    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedViewYTopAligned()F

    .line 328
    .line 329
    .line 330
    move-result p1

    .line 331
    iget p2, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleSizePx:F

    .line 332
    .line 333
    add-float p3, p1, p2

    .line 334
    .line 335
    cmpl-float p3, p4, p3

    .line 336
    .line 337
    if-gtz p3, :cond_d

    .line 338
    .line 339
    sub-float/2addr p1, p2

    .line 340
    cmpg-float p1, p4, p1

    .line 341
    .line 342
    if-gez p1, :cond_c

    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_c
    move v3, v4

    .line 346
    :cond_d
    :goto_6
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    .line 347
    .line 348
    if-eq v3, p1, :cond_13

    .line 349
    .line 350
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    .line 351
    .line 352
    .line 353
    iput-boolean v3, p0, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleDraggedOutEnough:Z

    .line 354
    .line 355
    goto :goto_9

    .line 356
    :cond_e
    invoke-virtual {p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->isStackEduVisible()Z

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    if-eqz p1, :cond_f

    .line 361
    .line 362
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 363
    .line 364
    iget-object p1, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackEduView:Lcom/android/wm/shell/bubbles/StackEducationView;

    .line 365
    .line 366
    invoke-virtual {p1, v4}, Lcom/android/wm/shell/bubbles/StackEducationView;->hide(Z)V

    .line 367
    .line 368
    .line 369
    :cond_f
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 370
    .line 371
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 372
    .line 373
    add-float/2addr p3, p5

    .line 374
    add-float/2addr p4, p6

    .line 375
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 376
    .line 377
    .line 378
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    .line 379
    .line 380
    if-eqz p1, :cond_12

    .line 381
    .line 382
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPositionAnimations:Ljava/util/HashMap;

    .line 383
    .line 384
    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 385
    .line 386
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object p2

    .line 390
    check-cast p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 391
    .line 392
    sget-object p5, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    .line 393
    .line 394
    invoke-virtual {p1, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    check-cast p1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 399
    .line 400
    iget-boolean p5, p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 401
    .line 402
    if-nez p5, :cond_11

    .line 403
    .line 404
    iget-boolean p5, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 405
    .line 406
    if-eqz p5, :cond_10

    .line 407
    .line 408
    goto :goto_7

    .line 409
    :cond_10
    iput-boolean v4, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    .line 410
    .line 411
    goto :goto_8

    .line 412
    :cond_11
    :goto_7
    invoke-virtual {p2, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {p1, p4}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 416
    .line 417
    .line 418
    :cond_12
    :goto_8
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    .line 419
    .line 420
    if-nez p1, :cond_13

    .line 421
    .line 422
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mAnimatingToBounds:Landroid/graphics/Rect;

    .line 423
    .line 424
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 425
    .line 426
    .line 427
    const p1, -0x7fffffff

    .line 428
    .line 429
    .line 430
    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPreImeY:F

    .line 431
    .line 432
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 433
    .line 434
    invoke-virtual {p0, p1, p3}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->moveFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V

    .line 435
    .line 436
    .line 437
    sget-object p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    .line 438
    .line 439
    invoke-virtual {p0, p1, p4}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->moveFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F)V

    .line 440
    .line 441
    .line 442
    iput-boolean v4, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mIsMovingFromFlinging:Z

    .line 443
    .line 444
    :cond_13
    :goto_9
    return-void
.end method

.method public final onUp(Landroid/view/View;FFFF)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 8
    .line 9
    iget-boolean v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-boolean v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    iput-boolean v5, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mShowedUserEducationInTouchListenerActive:Z

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {v3, v1, v5}, Lcom/android/wm/shell/bubbles/BubbleStackView;->animateDismissBubble(Landroid/view/View;Z)V

    .line 23
    .line 24
    .line 25
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 26
    .line 27
    iget-boolean v4, v4, Lcom/android/wm/shell/bubbles/DismissView;->isBeingEntered:Z

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    if-eqz v4, :cond_7

    .line 31
    .line 32
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 33
    .line 34
    iget-object v7, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 35
    .line 36
    invoke-virtual {v7, v1}, Lcom/android/wm/shell/bubbles/BubbleData;->getBubbleWithView(Landroid/view/View;)Lcom/android/wm/shell/bubbles/Bubble;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    iput-object v7, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 41
    .line 42
    iget-boolean v7, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpanded:Z

    .line 43
    .line 44
    if-eqz v7, :cond_6

    .line 45
    .line 46
    iget-object v7, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIndividualBubbleMagnetListener:Lcom/android/wm/shell/bubbles/BubbleStackView$4;

    .line 47
    .line 48
    iget-object v7, v7, Lcom/android/wm/shell/bubbles/BubbleStackView$4;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 49
    .line 50
    iget-object v8, v7, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 51
    .line 52
    iget-object v9, v8, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    .line 53
    .line 54
    if-nez v9, :cond_2

    .line 55
    .line 56
    move-object v10, v6

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v10, v9, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->underlyingObject:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v10, Landroid/view/View;

    .line 61
    .line 62
    :goto_0
    if-nez v10, :cond_3

    .line 63
    .line 64
    goto :goto_3

    .line 65
    :cond_3
    if-nez v9, :cond_4

    .line 66
    .line 67
    move-object v9, v6

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    iget-object v9, v9, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject;->underlyingObject:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v9, Landroid/view/View;

    .line 72
    .line 73
    :goto_1
    iget-object v10, v7, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 74
    .line 75
    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v10

    .line 79
    int-to-float v10, v10

    .line 80
    new-instance v11, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;

    .line 81
    .line 82
    const/16 v12, 0xf

    .line 83
    .line 84
    invoke-direct {v11, v7, v12}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    if-nez v9, :cond_5

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    invoke-virtual {v8, v9}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 91
    .line 92
    .line 93
    move-result-object v12

    .line 94
    const v13, 0x461c4000    # 10000.0f

    .line 95
    .line 96
    .line 97
    iput v13, v12, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mStiffness:F

    .line 98
    .line 99
    new-array v13, v5, [Ljava/lang/Runnable;

    .line 100
    .line 101
    sget-object v14, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    .line 102
    .line 103
    const/4 v15, 0x0

    .line 104
    invoke-virtual {v12, v14, v15, v13}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    new-array v13, v5, [Ljava/lang/Runnable;

    .line 108
    .line 109
    sget-object v14, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    .line 110
    .line 111
    invoke-virtual {v12, v14, v15, v13}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v9}, Landroid/view/View;->getTranslationY()F

    .line 115
    .line 116
    .line 117
    move-result v9

    .line 118
    add-float/2addr v9, v10

    .line 119
    new-array v10, v5, [Ljava/lang/Runnable;

    .line 120
    .line 121
    invoke-virtual {v12, v9, v10}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)V

    .line 122
    .line 123
    .line 124
    filled-new-array {v11}, [Ljava/lang/Runnable;

    .line 125
    .line 126
    .line 127
    move-result-object v9

    .line 128
    sget-object v10, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$12;

    .line 129
    .line 130
    invoke-virtual {v12, v10, v15, v9}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)V

    .line 131
    .line 132
    .line 133
    new-array v9, v5, [Ljava/lang/Runnable;

    .line 134
    .line 135
    invoke-virtual {v12, v9}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    .line 139
    .line 140
    .line 141
    :goto_2
    iget-object v7, v7, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 142
    .line 143
    invoke-virtual {v7}, Lcom/android/wm/shell/bubbles/DismissView;->hide()V

    .line 144
    .line 145
    .line 146
    :goto_3
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/BubbleStackView;->setSelectedBubble(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    .line 147
    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_6
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackMagnetListener:Lcom/android/wm/shell/bubbles/BubbleStackView$5;

    .line 151
    .line 152
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView$5;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 153
    .line 154
    iget-object v7, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 155
    .line 156
    iget-object v8, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 157
    .line 158
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getHeight()I

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    int-to-float v8, v8

    .line 163
    new-instance v9, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;

    .line 164
    .line 165
    const/16 v10, 0x10

    .line 166
    .line 167
    invoke-direct {v9, v3, v10}, Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    new-instance v3, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda3;

    .line 174
    .line 175
    invoke-direct {v3, v7, v8}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;F)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v7, v3}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationsForChildrenFromIndex(Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$$ExternalSyntheticLambda0;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    filled-new-array {v9}, [Ljava/lang/Runnable;

    .line 183
    .line 184
    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {v3, v7}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$$ExternalSyntheticLambda0;->startAll([Ljava/lang/Runnable;)V

    .line 187
    .line 188
    .line 189
    iget-object v3, v4, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 190
    .line 191
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/DismissView;->hide()V

    .line 192
    .line 193
    .line 194
    :goto_4
    const/4 v3, 0x1

    .line 195
    goto :goto_5

    .line 196
    :cond_7
    move v3, v5

    .line 197
    :goto_5
    if-eqz v3, :cond_8

    .line 198
    .line 199
    return-void

    .line 200
    :cond_8
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 201
    .line 202
    invoke-static {v3}, Lcom/android/wm/shell/bubbles/BubbleStackView;->-$$Nest$mshowExpandedViewIfNeeded(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 203
    .line 204
    .line 205
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 206
    .line 207
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 208
    .line 209
    .line 210
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 211
    .line 212
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 213
    .line 214
    iget-boolean v4, v4, Lcom/android/wm/shell/bubbles/BubbleData;->mExpanded:Z

    .line 215
    .line 216
    if-eqz v4, :cond_a

    .line 217
    .line 218
    iget-object v3, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mExpandedAnimationController:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    .line 219
    .line 220
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 221
    .line 222
    if-nez v4, :cond_9

    .line 223
    .line 224
    goto :goto_6

    .line 225
    :cond_9
    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    iget-object v7, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mBubbleStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 230
    .line 231
    invoke-virtual {v7}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getState()Lcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;

    .line 232
    .line 233
    .line 234
    move-result-object v7

    .line 235
    iget-object v8, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 236
    .line 237
    invoke-virtual {v8, v4, v7}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getExpandedBubbleXY(ILcom/android/wm/shell/bubbles/BubbleStackView$StackViewState;)Landroid/graphics/PointF;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    iget-object v8, v3, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 242
    .line 243
    invoke-virtual {v8, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->animationForChild(Landroid/view/View;)Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    iget v8, v7, Landroid/graphics/PointF;->x:F

    .line 252
    .line 253
    iget v7, v7, Landroid/graphics/PointF;->y:F

    .line 254
    .line 255
    new-array v9, v5, [Ljava/lang/Runnable;

    .line 256
    .line 257
    iput-object v9, v4, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPositionEndActions:[Ljava/lang/Runnable;

    .line 258
    .line 259
    new-array v9, v5, [Ljava/lang/Runnable;

    .line 260
    .line 261
    iput-object v6, v4, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPathAnimator:Landroid/animation/ObjectAnimator;

    .line 262
    .line 263
    sget-object v10, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 264
    .line 265
    invoke-virtual {v4, v10, v8, v9}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->property(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;F[Ljava/lang/Runnable;)V

    .line 266
    .line 267
    .line 268
    new-array v8, v5, [Ljava/lang/Runnable;

    .line 269
    .line 270
    invoke-virtual {v4, v7, v8}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->translationY(F[Ljava/lang/Runnable;)V

    .line 271
    .line 272
    .line 273
    iget-object v7, v4, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->mPositionStartVelocities:Ljava/util/Map;

    .line 274
    .line 275
    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    check-cast v7, Ljava/util/HashMap;

    .line 280
    .line 281
    invoke-virtual {v7, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    .line 285
    .line 286
    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 287
    .line 288
    .line 289
    move-result-object v8

    .line 290
    invoke-virtual {v7, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    new-instance v2, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda0;

    .line 294
    .line 295
    const/4 v7, 0x3

    .line 296
    invoke-direct {v2, v1, v7}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 297
    .line 298
    .line 299
    filled-new-array {v2}, [Ljava/lang/Runnable;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v4, v1}, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;->start([Ljava/lang/Runnable;)V

    .line 304
    .line 305
    .line 306
    iput-object v6, v3, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->mMagnetizedBubbleDraggingOut:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController$1;

    .line 307
    .line 308
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->updateBubblePositions()V

    .line 309
    .line 310
    .line 311
    :goto_6
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 312
    .line 313
    invoke-static {v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->-$$Nest$mshowExpandedViewIfNeeded(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_10

    .line 317
    .line 318
    :cond_a
    iget-boolean v1, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 319
    .line 320
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackAnimationController:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 321
    .line 322
    add-float v6, p2, p3

    .line 323
    .line 324
    iget v7, v4, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mBubbleSize:I

    .line 325
    .line 326
    div-int/lit8 v7, v7, 0x2

    .line 327
    .line 328
    int-to-float v7, v7

    .line 329
    sub-float v7, v6, v7

    .line 330
    .line 331
    iget-object v8, v4, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 332
    .line 333
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getWidth()I

    .line 334
    .line 335
    .line 336
    move-result v8

    .line 337
    div-int/lit8 v8, v8, 0x2

    .line 338
    .line 339
    int-to-float v8, v8

    .line 340
    cmpg-float v7, v7, v8

    .line 341
    .line 342
    if-gez v7, :cond_b

    .line 343
    .line 344
    const/4 v7, 0x1

    .line 345
    goto :goto_7

    .line 346
    :cond_b
    move v7, v5

    .line 347
    :goto_7
    if-eqz v7, :cond_c

    .line 348
    .line 349
    const v7, 0x443b8000    # 750.0f

    .line 350
    .line 351
    .line 352
    cmpg-float v7, v2, v7

    .line 353
    .line 354
    if-gez v7, :cond_d

    .line 355
    .line 356
    goto :goto_8

    .line 357
    :cond_c
    const v7, -0x3bc48000    # -750.0f

    .line 358
    .line 359
    .line 360
    cmpg-float v7, v2, v7

    .line 361
    .line 362
    if-gez v7, :cond_d

    .line 363
    .line 364
    :goto_8
    const/4 v7, 0x1

    .line 365
    goto :goto_9

    .line 366
    :cond_d
    move v7, v5

    .line 367
    :goto_9
    iget-object v8, v4, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 368
    .line 369
    invoke-virtual {v4}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->getBubbleCount()I

    .line 370
    .line 371
    .line 372
    move-result v9

    .line 373
    invoke-virtual {v8, v9}, Lcom/android/wm/shell/bubbles/BubblePositioner;->getAllowableStackPositionRegion(I)Landroid/graphics/RectF;

    .line 374
    .line 375
    .line 376
    move-result-object v8

    .line 377
    if-eqz v7, :cond_e

    .line 378
    .line 379
    iget v9, v8, Landroid/graphics/RectF;->left:F

    .line 380
    .line 381
    goto :goto_a

    .line 382
    :cond_e
    iget v9, v8, Landroid/graphics/RectF;->right:F

    .line 383
    .line 384
    :goto_a
    move v12, v9

    .line 385
    iget-object v9, v4, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 386
    .line 387
    if-eqz v9, :cond_11

    .line 388
    .line 389
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 390
    .line 391
    .line 392
    move-result v9

    .line 393
    if-nez v9, :cond_f

    .line 394
    .line 395
    goto/16 :goto_c

    .line 396
    .line 397
    :cond_f
    iget-object v9, v4, Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController;->mLayout:Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout;

    .line 398
    .line 399
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 400
    .line 401
    .line 402
    move-result-object v9

    .line 403
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 404
    .line 405
    .line 406
    move-result-object v9

    .line 407
    const-string v10, "bubble_stiffness"

    .line 408
    .line 409
    const/high16 v11, 0x442f0000    # 700.0f

    .line 410
    .line 411
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 412
    .line 413
    .line 414
    move-result v13

    .line 415
    const-string v10, "bubble_damping"

    .line 416
    .line 417
    const v11, 0x3f59999a    # 0.85f

    .line 418
    .line 419
    .line 420
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 421
    .line 422
    .line 423
    move-result v14

    .line 424
    const-string v10, "bubble_friction"

    .line 425
    .line 426
    const v11, 0x3ff33333    # 1.9f

    .line 427
    .line 428
    .line 429
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 430
    .line 431
    .line 432
    move-result v15

    .line 433
    sub-float v6, v12, v6

    .line 434
    .line 435
    const v9, 0x40866666    # 4.2f

    .line 436
    .line 437
    .line 438
    mul-float/2addr v9, v15

    .line 439
    mul-float/2addr v9, v6

    .line 440
    iget-object v6, v4, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 441
    .line 442
    iget v6, v6, Landroid/graphics/PointF;->y:F

    .line 443
    .line 444
    new-instance v10, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;

    .line 445
    .line 446
    iget v11, v8, Landroid/graphics/RectF;->top:F

    .line 447
    .line 448
    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    .line 449
    .line 450
    invoke-direct {v10, v15, v11, v8}, Lcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;-><init>(FFF)V

    .line 451
    .line 452
    .line 453
    move/from16 v11, p5

    .line 454
    .line 455
    invoke-static {v6, v11, v10}, Lcom/android/wm/shell/animation/PhysicsAnimator;->estimateFlingEndValue(FFLcom/android/wm/shell/animation/PhysicsAnimator$FlingConfig;)F

    .line 456
    .line 457
    .line 458
    move-result v6

    .line 459
    invoke-virtual {v4, v12, v6}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->notifyFloatingCoordinatorStackAnimatingTo(FF)V

    .line 460
    .line 461
    .line 462
    if-eqz v7, :cond_10

    .line 463
    .line 464
    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    .line 465
    .line 466
    .line 467
    move-result v2

    .line 468
    goto :goto_b

    .line 469
    :cond_10
    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    .line 470
    .line 471
    .line 472
    move-result v2

    .line 473
    :goto_b
    move v8, v2

    .line 474
    sget-object v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 475
    .line 476
    invoke-static {v13, v14}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 477
    .line 478
    .line 479
    move-result-object v10

    .line 480
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 481
    .line 482
    .line 483
    move-result-object v2

    .line 484
    move-object v6, v4

    .line 485
    move v9, v15

    .line 486
    move-object v11, v2

    .line 487
    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->flingThenSpringFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFLandroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;)V

    .line 488
    .line 489
    .line 490
    sget-object v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$2;

    .line 491
    .line 492
    invoke-static {v13, v14}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    .line 493
    .line 494
    .line 495
    move-result-object v10

    .line 496
    const/4 v11, 0x0

    .line 497
    move/from16 v8, p5

    .line 498
    .line 499
    invoke-virtual/range {v6 .. v11}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->flingThenSpringFirstBubbleWithStackFollowing(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;FFLandroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;)V

    .line 500
    .line 501
    .line 502
    iput-boolean v5, v4, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mFirstBubbleSpringingToTouch:Z

    .line 503
    .line 504
    const/4 v2, 0x1

    .line 505
    iput-boolean v2, v4, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mIsMovingFromFlinging:Z

    .line 506
    .line 507
    goto :goto_d

    .line 508
    :cond_11
    :goto_c
    const/4 v2, 0x1

    .line 509
    :goto_d
    iget-object v4, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 510
    .line 511
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    .line 512
    .line 513
    .line 514
    move-result v4

    .line 515
    div-int/lit8 v4, v4, 0x2

    .line 516
    .line 517
    int-to-float v4, v4

    .line 518
    cmpg-float v4, v12, v4

    .line 519
    .line 520
    if-gtz v4, :cond_12

    .line 521
    .line 522
    move v4, v2

    .line 523
    goto :goto_e

    .line 524
    :cond_12
    move v4, v5

    .line 525
    :goto_e
    iput-boolean v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 526
    .line 527
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 528
    .line 529
    iget-boolean v4, v3, Lcom/android/wm/shell/bubbles/BubbleStackView;->mStackOnLeftOrWillBe:Z

    .line 530
    .line 531
    if-eq v1, v4, :cond_13

    .line 532
    .line 533
    goto :goto_f

    .line 534
    :cond_13
    move v2, v5

    .line 535
    :goto_f
    invoke-virtual {v3, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateBadges(Z)V

    .line 536
    .line 537
    .line 538
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 539
    .line 540
    const/4 v2, 0x7

    .line 541
    const/4 v3, 0x0

    .line 542
    invoke-virtual {v1, v3, v2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->logBubbleEvent(Lcom/android/wm/shell/bubbles/BubbleViewProvider;I)V

    .line 543
    .line 544
    .line 545
    :goto_10
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 546
    .line 547
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 548
    .line 549
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/DismissView;->hide()V

    .line 550
    .line 551
    .line 552
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleStackView$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 553
    .line 554
    iput-boolean v5, v0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsDraggingStack:Z

    .line 555
    .line 556
    invoke-virtual {v0, v5}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateTemporarilyInvisibleAnimation(Z)V

    .line 557
    .line 558
    .line 559
    return-void
.end method
