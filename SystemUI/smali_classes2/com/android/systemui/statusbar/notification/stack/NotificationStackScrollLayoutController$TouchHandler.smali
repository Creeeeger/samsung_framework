.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field public final mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

.field public final mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class p1, Lcom/android/systemui/log/SecPanelLogger;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/android/systemui/log/SecPanelLogger;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 15
    .line 16
    new-instance p1, Lcom/android/systemui/log/SecTouchLogHelper;

    .line 17
    .line 18
    invoke-direct {p1}, Lcom/android/systemui/log/SecTouchLogHelper;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 4
    .line 5
    const-string v2, "StackScrollerController"

    .line 6
    .line 7
    invoke-virtual {v1, p1, v2, v0}, Lcom/android/systemui/log/SecTouchLogHelper;->printOnInterceptTouchEventLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 11
    .line 12
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->-$$Nest$mupdateEventAvailability(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Landroid/view/MotionEvent;)V

    .line 13
    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mIsStartFromContentsBound:Z

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isInContentBounds(F)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    return v1

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    const/4 v3, 0x1

    .line 44
    if-nez v2, :cond_1

    .line 45
    .line 46
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 47
    .line 48
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mScroller:Landroid/widget/OverScroller;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    xor-int/2addr v2, v3

    .line 55
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    .line 56
    .line 57
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 58
    .line 59
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    .line 60
    .line 61
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mTouchIsClick:Z

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchX:F

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    iput v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mInitialTouchY:F

    .line 74
    .line 75
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 79
    .line 80
    iget-object v4, v2, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 81
    .line 82
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 83
    .line 84
    if-eqz v5, :cond_2

    .line 85
    .line 86
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 87
    .line 88
    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    move v5, v1

    .line 94
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 95
    .line 96
    if-nez v6, :cond_3

    .line 97
    .line 98
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 99
    .line 100
    iget-boolean v6, v6, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 101
    .line 102
    if-nez v6, :cond_3

    .line 103
    .line 104
    iget-boolean v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    .line 105
    .line 106
    if-nez v6, :cond_3

    .line 107
    .line 108
    if-nez v4, :cond_3

    .line 109
    .line 110
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 111
    .line 112
    invoke-virtual {v6, p1}, Lcom/android/systemui/ExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    goto :goto_1

    .line 117
    :cond_3
    move v6, v1

    .line 118
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 119
    .line 120
    if-nez v7, :cond_4

    .line 121
    .line 122
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 123
    .line 124
    iget-boolean v7, v7, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 125
    .line 126
    if-nez v7, :cond_4

    .line 127
    .line 128
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 129
    .line 130
    if-nez v7, :cond_4

    .line 131
    .line 132
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onInterceptTouchEventScroll(Landroid/view/MotionEvent;)Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    goto :goto_2

    .line 137
    :cond_4
    move v7, v1

    .line 138
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 139
    .line 140
    if-nez v8, :cond_5

    .line 141
    .line 142
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    .line 143
    .line 144
    if-nez v8, :cond_5

    .line 145
    .line 146
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 147
    .line 148
    if-nez v8, :cond_5

    .line 149
    .line 150
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 151
    .line 152
    if-nez v8, :cond_5

    .line 153
    .line 154
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    .line 155
    .line 156
    if-nez v8, :cond_5

    .line 157
    .line 158
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    .line 159
    .line 160
    if-nez v8, :cond_5

    .line 161
    .line 162
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 163
    .line 164
    invoke-virtual {v8, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    goto :goto_3

    .line 169
    :cond_5
    move v8, v1

    .line 170
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 171
    .line 172
    .line 173
    move-result v9

    .line 174
    if-ne v9, v3, :cond_6

    .line 175
    .line 176
    move v9, v3

    .line 177
    goto :goto_4

    .line 178
    :cond_6
    move v9, v1

    .line 179
    :goto_4
    invoke-static {v4, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->isTouchInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 180
    .line 181
    .line 182
    move-result v4

    .line 183
    if-nez v4, :cond_7

    .line 184
    .line 185
    if-eqz v9, :cond_7

    .line 186
    .line 187
    if-nez v8, :cond_7

    .line 188
    .line 189
    if-nez v6, :cond_7

    .line 190
    .line 191
    if-nez v7, :cond_7

    .line 192
    .line 193
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 194
    .line 195
    invoke-virtual {v2, v3, v1, v1, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZZ)V

    .line 196
    .line 197
    .line 198
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    if-ne v2, v3, :cond_8

    .line 203
    .line 204
    iput-boolean v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 205
    .line 206
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 207
    .line 208
    if-eqz p0, :cond_9

    .line 209
    .line 210
    if-eqz v7, :cond_9

    .line 211
    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 213
    .line 214
    .line 215
    move-result p1

    .line 216
    if-eqz p1, :cond_9

    .line 217
    .line 218
    const/4 p1, 0x2

    .line 219
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 220
    .line 221
    .line 222
    :cond_9
    if-nez v8, :cond_a

    .line 223
    .line 224
    if-nez v7, :cond_a

    .line 225
    .line 226
    if-nez v6, :cond_a

    .line 227
    .line 228
    if-eqz v5, :cond_b

    .line 229
    .line 230
    :cond_a
    move v1, v3

    .line 231
    :cond_b
    return v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->mTouchLogHelper:Lcom/android/systemui/log/SecTouchLogHelper;

    .line 8
    .line 9
    const-string v4, "StackScrollerController"

    .line 10
    .line 11
    invoke-virtual {v3, v1, v4, v2}, Lcom/android/systemui/log/SecTouchLogHelper;->printOnTouchEventLog(Landroid/view/MotionEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 15
    .line 16
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mIsStartFromContentsBound:Z

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isInContentBounds(F)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    return v5

    .line 35
    :cond_0
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    .line 36
    .line 37
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    const/4 v7, 0x3

    .line 44
    const/4 v8, 0x1

    .line 45
    if-eq v6, v7, :cond_2

    .line 46
    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    if-ne v6, v8, :cond_1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move v6, v5

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    :goto_0
    move v6, v8

    .line 57
    :goto_1
    iget-object v9, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 58
    .line 59
    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->handleEmptySpaceClick(Landroid/view/MotionEvent;)V

    .line 60
    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    iget-object v10, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 65
    .line 66
    if-eqz v10, :cond_3

    .line 67
    .line 68
    iget-object v10, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 69
    .line 70
    invoke-virtual {v10, v1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    move v10, v5

    .line 76
    :goto_2
    iget-boolean v11, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mOnlyScrollingInThisMotion:Z

    .line 77
    .line 78
    iget-boolean v12, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 79
    .line 80
    iget-object v13, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 81
    .line 82
    if-nez v13, :cond_6

    .line 83
    .line 84
    iget-boolean v13, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 85
    .line 86
    if-eqz v13, :cond_6

    .line 87
    .line 88
    iget-object v13, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 89
    .line 90
    iget-boolean v13, v13, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 91
    .line 92
    if-nez v13, :cond_6

    .line 93
    .line 94
    if-nez v11, :cond_6

    .line 95
    .line 96
    if-nez v3, :cond_6

    .line 97
    .line 98
    iget-object v13, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandHelper:Lcom/android/systemui/ExpandHelper;

    .line 99
    .line 100
    if-eqz v6, :cond_4

    .line 101
    .line 102
    iput-boolean v5, v13, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    .line 103
    .line 104
    :cond_4
    invoke-virtual {v13, v1}, Lcom/android/systemui/ExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 105
    .line 106
    .line 107
    move-result v13

    .line 108
    iget-boolean v14, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandingNotification:Z

    .line 109
    .line 110
    iget-boolean v15, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 111
    .line 112
    if-eqz v15, :cond_5

    .line 113
    .line 114
    if-nez v14, :cond_5

    .line 115
    .line 116
    if-eqz v12, :cond_5

    .line 117
    .line 118
    iget-boolean v12, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 119
    .line 120
    if-nez v12, :cond_5

    .line 121
    .line 122
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    invoke-virtual {v12, v5}, Landroid/view/MotionEvent;->setAction(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v9, v12}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    .line 130
    .line 131
    .line 132
    invoke-virtual {v12}, Landroid/view/MotionEvent;->recycle()V

    .line 133
    .line 134
    .line 135
    :cond_5
    move v12, v14

    .line 136
    goto :goto_3

    .line 137
    :cond_6
    move v13, v5

    .line 138
    :goto_3
    iget-object v14, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 139
    .line 140
    if-nez v14, :cond_7

    .line 141
    .line 142
    iget-boolean v14, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 143
    .line 144
    if-eqz v14, :cond_7

    .line 145
    .line 146
    iget-object v14, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 147
    .line 148
    iget-boolean v14, v14, Lcom/android/systemui/SwipeHelper;->mIsSwiping:Z

    .line 149
    .line 150
    if-nez v14, :cond_7

    .line 151
    .line 152
    if-nez v12, :cond_7

    .line 153
    .line 154
    iget-boolean v14, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowScrollingInThisMotion:Z

    .line 155
    .line 156
    if-nez v14, :cond_7

    .line 157
    .line 158
    invoke-virtual {v9, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onScrollTouch(Landroid/view/MotionEvent;)Z

    .line 159
    .line 160
    .line 161
    move-result v14

    .line 162
    goto :goto_4

    .line 163
    :cond_7
    move v14, v5

    .line 164
    :goto_4
    iget-object v15, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    .line 165
    .line 166
    if-nez v15, :cond_8

    .line 167
    .line 168
    iget-boolean v15, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsBeingDragged:Z

    .line 169
    .line 170
    if-nez v15, :cond_8

    .line 171
    .line 172
    if-nez v12, :cond_8

    .line 173
    .line 174
    iget-boolean v12, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mExpandedInThisMotion:Z

    .line 175
    .line 176
    if-nez v12, :cond_8

    .line 177
    .line 178
    if-nez v11, :cond_8

    .line 179
    .line 180
    iget-boolean v11, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mDisallowDismissInThisMotion:Z

    .line 181
    .line 182
    if-nez v11, :cond_8

    .line 183
    .line 184
    iget-object v11, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 185
    .line 186
    invoke-virtual {v11, v1}, Lcom/android/systemui/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 187
    .line 188
    .line 189
    move-result v11

    .line 190
    goto :goto_5

    .line 191
    :cond_8
    move v11, v5

    .line 192
    :goto_5
    if-eqz v3, :cond_b

    .line 193
    .line 194
    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->isTouchInView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 195
    .line 196
    .line 197
    move-result v12

    .line 198
    if-nez v12, :cond_b

    .line 199
    .line 200
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 201
    .line 202
    instance-of v12, v3, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    .line 203
    .line 204
    if-eqz v12, :cond_b

    .line 205
    .line 206
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;

    .line 207
    .line 208
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/row/NotificationSnooze;->mExpanded:Z

    .line 209
    .line 210
    if-eqz v3, :cond_9

    .line 211
    .line 212
    if-nez v6, :cond_a

    .line 213
    .line 214
    :cond_9
    if-nez v11, :cond_b

    .line 215
    .line 216
    if-eqz v14, :cond_b

    .line 217
    .line 218
    :cond_a
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->checkSnoozeLeavebehind()V

    .line 219
    .line 220
    .line 221
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-ne v3, v8, :cond_d

    .line 226
    .line 227
    if-nez v11, :cond_c

    .line 228
    .line 229
    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 230
    .line 231
    const/16 v6, 0xb

    .line 232
    .line 233
    invoke-interface {v3, v6}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    .line 234
    .line 235
    .line 236
    :cond_c
    iput-boolean v8, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mCheckForLeavebehind:Z

    .line 237
    .line 238
    :cond_d
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->-$$Nest$mupdateEventAvailability(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Landroid/view/MotionEvent;)V

    .line 239
    .line 240
    .line 241
    iget-boolean v3, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mIsExpanded:Z

    .line 242
    .line 243
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;->mPanelLogger:Lcom/android/systemui/log/SecPanelLogger;

    .line 244
    .line 245
    check-cast v0, Lcom/android/systemui/log/SecPanelLoggerImpl;

    .line 246
    .line 247
    iget-object v6, v0, Lcom/android/systemui/log/SecPanelLoggerImpl;->sysuiStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 248
    .line 249
    check-cast v6, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 250
    .line 251
    iget v6, v6, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 252
    .line 253
    const/4 v12, 0x2

    .line 254
    if-ne v6, v8, :cond_e

    .line 255
    .line 256
    goto :goto_6

    .line 257
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    if-ne v6, v12, :cond_f

    .line 262
    .line 263
    goto :goto_6

    .line 264
    :cond_f
    const-string v6, "NSSL.onTouchEvent(), horizontalSwipeWantsIt:"

    .line 265
    .line 266
    const-string v15, ", scrollerWantsIt:"

    .line 267
    .line 268
    const-string v5, ", expandWantsIt:"

    .line 269
    .line 270
    invoke-static {v6, v11, v15, v14, v5}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    const-string v15, ", isExpanded:"

    .line 275
    .line 276
    invoke-static {v6, v13, v5, v10, v15}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    const-string v5, "NSSL_TOUCH"

    .line 287
    .line 288
    iget-object v0, v0, Lcom/android/systemui/log/SecPanelLoggerImpl;->writer:Lcom/android/systemui/log/SecPanelLogWriter;

    .line 289
    .line 290
    invoke-virtual {v0, v5, v3}, Lcom/android/systemui/log/SecPanelLogWriter;->logPanel(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    iget-object v1, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 298
    .line 299
    if-nez v1, :cond_10

    .line 300
    .line 301
    const-string/jumbo v0, "traceJankOnTouchEvent, mJankMonitor is null"

    .line 302
    .line 303
    .line 304
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    goto :goto_7

    .line 308
    :cond_10
    if-eqz v0, :cond_13

    .line 309
    .line 310
    if-eq v0, v8, :cond_12

    .line 311
    .line 312
    if-eq v0, v7, :cond_11

    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_11
    if-eqz v14, :cond_14

    .line 316
    .line 317
    invoke-virtual {v1, v12}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 318
    .line 319
    .line 320
    goto :goto_7

    .line 321
    :cond_12
    if-eqz v14, :cond_14

    .line 322
    .line 323
    iget-boolean v0, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->mFlingAfterUpEvent:Z

    .line 324
    .line 325
    if-nez v0, :cond_14

    .line 326
    .line 327
    invoke-virtual {v1, v12}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 328
    .line 329
    .line 330
    goto :goto_7

    .line 331
    :cond_13
    if-eqz v14, :cond_14

    .line 332
    .line 333
    invoke-virtual {v1, v9, v12}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 334
    .line 335
    .line 336
    :cond_14
    :goto_7
    if-nez v11, :cond_16

    .line 337
    .line 338
    if-nez v14, :cond_16

    .line 339
    .line 340
    if-nez v13, :cond_16

    .line 341
    .line 342
    if-eqz v10, :cond_15

    .line 343
    .line 344
    goto :goto_8

    .line 345
    :cond_15
    const/4 v5, 0x0

    .line 346
    goto :goto_9

    .line 347
    :cond_16
    :goto_8
    move v5, v8

    .line 348
    :goto_9
    return v5
.end method
