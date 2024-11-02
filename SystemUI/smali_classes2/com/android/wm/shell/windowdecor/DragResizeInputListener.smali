.class public final Lcom/android/wm/shell/windowdecor/DragResizeInputListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

.field public final mChoreographer:Landroid/view/Choreographer;

.field public mCornerSize:I

.field public final mDecorationSurface:Landroid/view/SurfaceControl;

.field public final mDisplayId:I

.field public final mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field public mDragPointerId:I

.field public final mFakeWindow:Lcom/android/internal/view/BaseIWindow;

.field public final mHandler:Landroid/os/Handler;

.field public mInnerResizeHandleThickness:I

.field public final mInputChannel:Landroid/view/InputChannel;

.field public final mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mIsDexEnabled:Z

.field public mIsPointerInput:Z

.field public mIsStylusInput:Z

.field public final mLastTouchRegion:Landroid/graphics/Region;

.field public final mLeftBottomCornerRegion:Landroid/graphics/Region;

.field public final mLeftTopCornerRegion:Landroid/graphics/Region;

.field public mMultitaskingWindowDecoration:Lcom/android/wm/shell/windowdecor/MultitaskingWindowDecoration;

.field public final mPointerLeftBottomCornerBounds:Landroid/graphics/Rect;

.field public final mPointerLeftTopCornerBounds:Landroid/graphics/Rect;

.field public mPointerResizeHandleThickness:I

.field public final mPointerRightBottomCornerBounds:Landroid/graphics/Rect;

.field public final mPointerRightTopCornerBounds:Landroid/graphics/Rect;

.field public final mPointerTouchableRegion:Landroid/graphics/Region;

.field public mResizeHandleThickness:I

.field public final mRightBottomCornerRegion:Landroid/graphics/Region;

.field public final mRightTopCornerRegion:Landroid/graphics/Region;

.field public final mSetDefaultPointerRunnable:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$1;

.field public mTaskHeight:I

.field public mTaskWidth:I

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpCornerRect:Landroid/graphics/Rect;

.field public final mTmpInnerRect:Landroid/graphics/Rect;

.field public mTouchableState:Z

.field public final mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;Lcom/android/wm/shell/ShellTaskOrganizer;)V
    .locals 21

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    const-string v0, "DragResizeInputListener of "

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    .line 9
    .line 10
    .line 11
    move-result-object v8

    .line 12
    iput-object v8, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mWindowSession:Landroid/view/IWindowSession;

    .line 13
    .line 14
    new-instance v1, Landroid/graphics/Region;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftTopCornerRegion:Landroid/graphics/Region;

    .line 20
    .line 21
    new-instance v1, Landroid/graphics/Region;

    .line 22
    .line 23
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightTopCornerRegion:Landroid/graphics/Region;

    .line 27
    .line 28
    new-instance v1, Landroid/graphics/Region;

    .line 29
    .line 30
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftBottomCornerRegion:Landroid/graphics/Region;

    .line 34
    .line 35
    new-instance v1, Landroid/graphics/Region;

    .line 36
    .line 37
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightBottomCornerRegion:Landroid/graphics/Region;

    .line 41
    .line 42
    new-instance v1, Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpBounds:Landroid/graphics/Rect;

    .line 48
    .line 49
    new-instance v1, Landroid/graphics/Rect;

    .line 50
    .line 51
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpCornerRect:Landroid/graphics/Rect;

    .line 55
    .line 56
    new-instance v1, Landroid/graphics/Rect;

    .line 57
    .line 58
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 59
    .line 60
    .line 61
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpInnerRect:Landroid/graphics/Rect;

    .line 62
    .line 63
    new-instance v1, Landroid/graphics/Region;

    .line 64
    .line 65
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 66
    .line 67
    .line 68
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerTouchableRegion:Landroid/graphics/Region;

    .line 69
    .line 70
    new-instance v1, Landroid/graphics/Rect;

    .line 71
    .line 72
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 73
    .line 74
    .line 75
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerLeftTopCornerBounds:Landroid/graphics/Rect;

    .line 76
    .line 77
    new-instance v1, Landroid/graphics/Rect;

    .line 78
    .line 79
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerRightTopCornerBounds:Landroid/graphics/Rect;

    .line 83
    .line 84
    new-instance v1, Landroid/graphics/Rect;

    .line 85
    .line 86
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 87
    .line 88
    .line 89
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerLeftBottomCornerBounds:Landroid/graphics/Rect;

    .line 90
    .line 91
    new-instance v1, Landroid/graphics/Rect;

    .line 92
    .line 93
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerRightBottomCornerBounds:Landroid/graphics/Rect;

    .line 97
    .line 98
    const/4 v1, -0x1

    .line 99
    iput v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragPointerId:I

    .line 100
    .line 101
    new-instance v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$1;

    .line 102
    .line 103
    invoke-direct {v1, v7}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$1;-><init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)V

    .line 104
    .line 105
    .line 106
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mSetDefaultPointerRunnable:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$1;

    .line 107
    .line 108
    new-instance v1, Landroid/graphics/Region;

    .line 109
    .line 110
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLastTouchRegion:Landroid/graphics/Region;

    .line 114
    .line 115
    const-class v1, Landroid/hardware/input/InputManager;

    .line 116
    .line 117
    move-object/from16 v6, p1

    .line 118
    .line 119
    invoke-virtual {v6, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Landroid/hardware/input/InputManager;

    .line 124
    .line 125
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputManager:Landroid/hardware/input/InputManager;

    .line 126
    .line 127
    move-object/from16 v1, p2

    .line 128
    .line 129
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mHandler:Landroid/os/Handler;

    .line 130
    .line 131
    move-object/from16 v1, p3

    .line 132
    .line 133
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mChoreographer:Landroid/view/Choreographer;

    .line 134
    .line 135
    move/from16 v1, p4

    .line 136
    .line 137
    iput v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDisplayId:I

    .line 138
    .line 139
    move-object/from16 v2, p5

    .line 140
    .line 141
    iput-object v2, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDecorationSurface:Landroid/view/SurfaceControl;

    .line 142
    .line 143
    new-instance v11, Lcom/android/internal/view/BaseIWindow;

    .line 144
    .line 145
    invoke-direct {v11}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    .line 146
    .line 147
    .line 148
    iput-object v11, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mFakeWindow:Lcom/android/internal/view/BaseIWindow;

    .line 149
    .line 150
    invoke-virtual {v11, v8}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    .line 151
    .line 152
    .line 153
    new-instance v18, Landroid/os/Binder;

    .line 154
    .line 155
    invoke-direct/range {v18 .. v18}, Landroid/os/Binder;-><init>()V

    .line 156
    .line 157
    .line 158
    new-instance v3, Landroid/view/InputChannel;

    .line 159
    .line 160
    invoke-direct {v3}, Landroid/view/InputChannel;-><init>()V

    .line 161
    .line 162
    .line 163
    iput-object v3, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputChannel:Landroid/view/InputChannel;

    .line 164
    .line 165
    const/4 v12, 0x0

    .line 166
    const/16 v13, 0x8

    .line 167
    .line 168
    const/high16 v14, 0x20000000

    .line 169
    .line 170
    const/4 v15, 0x0

    .line 171
    const/16 v16, 0x2

    .line 172
    .line 173
    const/16 v17, 0x0

    .line 174
    .line 175
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v19

    .line 191
    move/from16 v9, p4

    .line 192
    .line 193
    move-object/from16 v10, p5

    .line 194
    .line 195
    move-object/from16 v20, v3

    .line 196
    .line 197
    invoke-interface/range {v8 .. v20}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/view/IWindow;Landroid/os/IBinder;IIIILandroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .line 199
    .line 200
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 203
    .line 204
    .line 205
    :goto_0
    new-instance v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    .line 206
    .line 207
    iget-object v3, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputChannel:Landroid/view/InputChannel;

    .line 208
    .line 209
    iget-object v4, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mHandler:Landroid/os/Handler;

    .line 210
    .line 211
    iget-object v5, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mChoreographer:Landroid/view/Choreographer;

    .line 212
    .line 213
    const/4 v8, 0x0

    .line 214
    move-object v1, v0

    .line 215
    move-object/from16 v2, p0

    .line 216
    .line 217
    move v6, v8

    .line 218
    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;-><init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;Landroid/view/InputChannel;Landroid/os/Handler;Landroid/view/Choreographer;I)V

    .line 219
    .line 220
    .line 221
    iput-object v0, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    .line 222
    .line 223
    move-object/from16 v1, p6

    .line 224
    .line 225
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 226
    .line 227
    new-instance v1, Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 228
    .line 229
    invoke-direct {v1, v0}, Lcom/android/wm/shell/windowdecor/DragDetector;-><init>(Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;)V

    .line 230
    .line 231
    .line 232
    iput-object v1, v7, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 233
    .line 234
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    iput v0, v1, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    .line 243
    .line 244
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->dispose()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputChannel:Landroid/view/InputChannel;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mWindowSession:Landroid/view/IWindowSession;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mFakeWindow:Lcom/android/internal/view/BaseIWindow;

    .line 14
    .line 15
    invoke-interface {v0, p0}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public final setGeometry(IIIIIIIIIZ)Z
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    move v1, p3

    .line 3
    move/from16 v2, p4

    .line 4
    .line 5
    move/from16 v3, p5

    .line 6
    .line 7
    move/from16 v4, p7

    .line 8
    .line 9
    move/from16 v5, p8

    .line 10
    .line 11
    move/from16 v6, p10

    .line 12
    .line 13
    sget-boolean v7, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 14
    .line 15
    const/4 v8, 0x1

    .line 16
    const/4 v9, 0x0

    .line 17
    if-eqz v7, :cond_0

    .line 18
    .line 19
    add-int v7, p6, p1

    .line 20
    .line 21
    iget-boolean v10, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTouchableState:Z

    .line 22
    .line 23
    if-eq v6, v10, :cond_1

    .line 24
    .line 25
    iput-boolean v6, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTouchableState:Z

    .line 26
    .line 27
    move v10, v8

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move/from16 v7, p6

    .line 30
    .line 31
    :cond_1
    move v10, v9

    .line 32
    :goto_0
    iget v11, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 33
    .line 34
    if-ne v11, v3, :cond_3

    .line 35
    .line 36
    iget v11, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 37
    .line 38
    if-ne v11, v7, :cond_3

    .line 39
    .line 40
    iget v11, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    .line 41
    .line 42
    if-ne v11, v4, :cond_3

    .line 43
    .line 44
    iget v11, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCornerSize:I

    .line 45
    .line 46
    if-ne v11, v5, :cond_3

    .line 47
    .line 48
    iget v11, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerResizeHandleThickness:I

    .line 49
    .line 50
    if-ne v11, v1, :cond_3

    .line 51
    .line 52
    iget v11, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInnerResizeHandleThickness:I

    .line 53
    .line 54
    if-ne v11, v2, :cond_3

    .line 55
    .line 56
    if-eqz v10, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0, v6}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->updateTouchableState(Z)V

    .line 59
    .line 60
    .line 61
    :cond_2
    return v9

    .line 62
    :cond_3
    iput v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 63
    .line 64
    iput v7, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 65
    .line 66
    iput v4, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    .line 67
    .line 68
    iput v5, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCornerSize:I

    .line 69
    .line 70
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 71
    .line 72
    move/from16 v5, p9

    .line 73
    .line 74
    iput v5, v4, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    .line 75
    .line 76
    iput v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInnerResizeHandleThickness:I

    .line 77
    .line 78
    iput v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerResizeHandleThickness:I

    .line 79
    .line 80
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpBounds:Landroid/graphics/Rect;

    .line 81
    .line 82
    invoke-virtual {v4, v9, v9, v3, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 83
    .line 84
    .line 85
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerLeftTopCornerBounds:Landroid/graphics/Rect;

    .line 86
    .line 87
    neg-int v4, v1

    .line 88
    invoke-virtual {v3, v4, v4, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 89
    .line 90
    .line 91
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerRightTopCornerBounds:Landroid/graphics/Rect;

    .line 92
    .line 93
    iget v5, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 94
    .line 95
    sub-int v7, v5, v1

    .line 96
    .line 97
    add-int/2addr v5, v1

    .line 98
    invoke-virtual {v3, v7, v4, v5, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 99
    .line 100
    .line 101
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerLeftBottomCornerBounds:Landroid/graphics/Rect;

    .line 102
    .line 103
    iget v5, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 104
    .line 105
    sub-int v7, v5, v1

    .line 106
    .line 107
    add-int/2addr v5, v1

    .line 108
    invoke-virtual {v3, v4, v7, p3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 109
    .line 110
    .line 111
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerRightBottomCornerBounds:Landroid/graphics/Rect;

    .line 112
    .line 113
    iget v5, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 114
    .line 115
    sub-int v7, v5, v1

    .line 116
    .line 117
    iget v10, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 118
    .line 119
    sub-int v11, v10, v1

    .line 120
    .line 121
    add-int/2addr v5, v1

    .line 122
    add-int/2addr v10, v1

    .line 123
    invoke-virtual {v3, v7, v11, v5, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 124
    .line 125
    .line 126
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerTouchableRegion:Landroid/graphics/Region;

    .line 127
    .line 128
    iget v5, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 129
    .line 130
    add-int/2addr v5, v1

    .line 131
    iget v7, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 132
    .line 133
    add-int/2addr v7, v1

    .line 134
    invoke-virtual {v3, v4, v4, v5, v7}, Landroid/graphics/Region;->set(IIII)Z

    .line 135
    .line 136
    .line 137
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerTouchableRegion:Landroid/graphics/Region;

    .line 138
    .line 139
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpBounds:Landroid/graphics/Rect;

    .line 140
    .line 141
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 142
    .line 143
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 144
    .line 145
    .line 146
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerTouchableRegion:Landroid/graphics/Region;

    .line 147
    .line 148
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerLeftTopCornerBounds:Landroid/graphics/Rect;

    .line 149
    .line 150
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 151
    .line 152
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 153
    .line 154
    .line 155
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerTouchableRegion:Landroid/graphics/Region;

    .line 156
    .line 157
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerRightTopCornerBounds:Landroid/graphics/Rect;

    .line 158
    .line 159
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 160
    .line 161
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 162
    .line 163
    .line 164
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerTouchableRegion:Landroid/graphics/Region;

    .line 165
    .line 166
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerLeftBottomCornerBounds:Landroid/graphics/Rect;

    .line 167
    .line 168
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 169
    .line 170
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerTouchableRegion:Landroid/graphics/Region;

    .line 174
    .line 175
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerRightBottomCornerBounds:Landroid/graphics/Rect;

    .line 176
    .line 177
    sget-object v4, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 178
    .line 179
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 180
    .line 181
    .line 182
    new-instance v1, Landroid/graphics/Region;

    .line 183
    .line 184
    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 185
    .line 186
    .line 187
    new-instance v3, Landroid/graphics/Rect;

    .line 188
    .line 189
    iget v4, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    .line 190
    .line 191
    neg-int v5, v4

    .line 192
    neg-int v7, v4

    .line 193
    iget v10, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 194
    .line 195
    add-int/2addr v10, v4

    .line 196
    invoke-direct {v3, v5, v7, v10, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v3}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 200
    .line 201
    .line 202
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 203
    .line 204
    if-eqz v3, :cond_4

    .line 205
    .line 206
    if-eqz p2, :cond_4

    .line 207
    .line 208
    iget v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 209
    .line 210
    sub-int/2addr v3, p2

    .line 211
    div-int/lit8 v3, v3, 0x2

    .line 212
    .line 213
    new-instance v4, Landroid/graphics/Rect;

    .line 214
    .line 215
    iget v5, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    .line 216
    .line 217
    neg-int v5, v5

    .line 218
    add-int v7, v3, p2

    .line 219
    .line 220
    invoke-direct {v4, v3, v5, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 221
    .line 222
    .line 223
    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 224
    .line 225
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 226
    .line 227
    .line 228
    :cond_4
    new-instance v3, Landroid/graphics/Rect;

    .line 229
    .line 230
    iget v4, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    .line 231
    .line 232
    neg-int v4, v4

    .line 233
    iget v5, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInnerResizeHandleThickness:I

    .line 234
    .line 235
    iget v7, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 236
    .line 237
    invoke-direct {v3, v4, v9, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v3}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 241
    .line 242
    .line 243
    new-instance v3, Landroid/graphics/Rect;

    .line 244
    .line 245
    iget v4, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 246
    .line 247
    iget v5, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInnerResizeHandleThickness:I

    .line 248
    .line 249
    sub-int v5, v4, v5

    .line 250
    .line 251
    iget v7, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    .line 252
    .line 253
    add-int/2addr v4, v7

    .line 254
    iget v7, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 255
    .line 256
    invoke-direct {v3, v5, v9, v4, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v1, v3}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 260
    .line 261
    .line 262
    new-instance v3, Landroid/graphics/Rect;

    .line 263
    .line 264
    iget v4, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mResizeHandleThickness:I

    .line 265
    .line 266
    neg-int v5, v4

    .line 267
    iget v7, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 268
    .line 269
    iget v10, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInnerResizeHandleThickness:I

    .line 270
    .line 271
    sub-int v10, v7, v10

    .line 272
    .line 273
    iget v11, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 274
    .line 275
    add-int/2addr v11, v4

    .line 276
    add-int/2addr v7, v4

    .line 277
    invoke-direct {v3, v5, v10, v11, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v3}, Landroid/graphics/Region;->union(Landroid/graphics/Rect;)Z

    .line 281
    .line 282
    .line 283
    iget v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCornerSize:I

    .line 284
    .line 285
    div-int/lit8 v4, v3, 0x2

    .line 286
    .line 287
    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpCornerRect:Landroid/graphics/Rect;

    .line 288
    .line 289
    invoke-virtual {v5, v9, v9, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 290
    .line 291
    .line 292
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpInnerRect:Landroid/graphics/Rect;

    .line 293
    .line 294
    sub-int v5, v4, v2

    .line 295
    .line 296
    invoke-virtual {v3, v9, v9, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 297
    .line 298
    .line 299
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpCornerRect:Landroid/graphics/Rect;

    .line 300
    .line 301
    neg-int v5, v4

    .line 302
    invoke-virtual {v3, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 303
    .line 304
    .line 305
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpInnerRect:Landroid/graphics/Rect;

    .line 306
    .line 307
    invoke-virtual {v3, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 308
    .line 309
    .line 310
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftTopCornerRegion:Landroid/graphics/Region;

    .line 311
    .line 312
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpCornerRect:Landroid/graphics/Rect;

    .line 313
    .line 314
    invoke-virtual {v3, v7}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 315
    .line 316
    .line 317
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftTopCornerRegion:Landroid/graphics/Region;

    .line 318
    .line 319
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpInnerRect:Landroid/graphics/Rect;

    .line 320
    .line 321
    sget-object v9, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 322
    .line 323
    invoke-virtual {v3, v7, v9}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 324
    .line 325
    .line 326
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpCornerRect:Landroid/graphics/Rect;

    .line 327
    .line 328
    iget v7, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 329
    .line 330
    sub-int/2addr v7, v4

    .line 331
    invoke-virtual {v3, v7, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 332
    .line 333
    .line 334
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpInnerRect:Landroid/graphics/Rect;

    .line 335
    .line 336
    iget v7, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 337
    .line 338
    sub-int/2addr v7, v4

    .line 339
    invoke-virtual {v3, v7, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 340
    .line 341
    .line 342
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightTopCornerRegion:Landroid/graphics/Region;

    .line 343
    .line 344
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpCornerRect:Landroid/graphics/Rect;

    .line 345
    .line 346
    invoke-virtual {v3, v7}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 347
    .line 348
    .line 349
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightTopCornerRegion:Landroid/graphics/Region;

    .line 350
    .line 351
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpInnerRect:Landroid/graphics/Rect;

    .line 352
    .line 353
    sget-object v9, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 354
    .line 355
    invoke-virtual {v3, v7, v9}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 356
    .line 357
    .line 358
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpCornerRect:Landroid/graphics/Rect;

    .line 359
    .line 360
    iget v7, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 361
    .line 362
    sub-int/2addr v7, v4

    .line 363
    invoke-virtual {v3, v5, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 364
    .line 365
    .line 366
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpInnerRect:Landroid/graphics/Rect;

    .line 367
    .line 368
    iget v5, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 369
    .line 370
    sub-int/2addr v5, v4

    .line 371
    invoke-virtual {v3, v2, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 372
    .line 373
    .line 374
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftBottomCornerRegion:Landroid/graphics/Region;

    .line 375
    .line 376
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpCornerRect:Landroid/graphics/Rect;

    .line 377
    .line 378
    invoke-virtual {v2, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 379
    .line 380
    .line 381
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftBottomCornerRegion:Landroid/graphics/Region;

    .line 382
    .line 383
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpInnerRect:Landroid/graphics/Rect;

    .line 384
    .line 385
    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 386
    .line 387
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 388
    .line 389
    .line 390
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpCornerRect:Landroid/graphics/Rect;

    .line 391
    .line 392
    iget v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 393
    .line 394
    sub-int/2addr v3, v4

    .line 395
    iget v5, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 396
    .line 397
    sub-int/2addr v5, v4

    .line 398
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 399
    .line 400
    .line 401
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpInnerRect:Landroid/graphics/Rect;

    .line 402
    .line 403
    iget v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 404
    .line 405
    sub-int/2addr v3, v4

    .line 406
    iget v5, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 407
    .line 408
    sub-int/2addr v5, v4

    .line 409
    invoke-virtual {v2, v3, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 410
    .line 411
    .line 412
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightBottomCornerRegion:Landroid/graphics/Region;

    .line 413
    .line 414
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpCornerRect:Landroid/graphics/Rect;

    .line 415
    .line 416
    invoke-virtual {v2, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 417
    .line 418
    .line 419
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightBottomCornerRegion:Landroid/graphics/Region;

    .line 420
    .line 421
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTmpInnerRect:Landroid/graphics/Rect;

    .line 422
    .line 423
    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 424
    .line 425
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 426
    .line 427
    .line 428
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftTopCornerRegion:Landroid/graphics/Region;

    .line 429
    .line 430
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 431
    .line 432
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 433
    .line 434
    .line 435
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightTopCornerRegion:Landroid/graphics/Region;

    .line 436
    .line 437
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 438
    .line 439
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 440
    .line 441
    .line 442
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftBottomCornerRegion:Landroid/graphics/Region;

    .line 443
    .line 444
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 445
    .line 446
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 447
    .line 448
    .line 449
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightBottomCornerRegion:Landroid/graphics/Region;

    .line 450
    .line 451
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    .line 452
    .line 453
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 454
    .line 455
    .line 456
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    .line 457
    .line 458
    if-eqz v2, :cond_5

    .line 459
    .line 460
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLastTouchRegion:Landroid/graphics/Region;

    .line 461
    .line 462
    invoke-virtual {v2, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 463
    .line 464
    .line 465
    invoke-virtual {p0, v6}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->updateTouchableState(Z)V

    .line 466
    .line 467
    .line 468
    return v8

    .line 469
    :cond_5
    :try_start_0
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mWindowSession:Landroid/view/IWindowSession;

    .line 470
    .line 471
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputChannel:Landroid/view/InputChannel;

    .line 472
    .line 473
    invoke-virtual {v3}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 474
    .line 475
    .line 476
    move-result-object v3

    .line 477
    iget v4, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDisplayId:I

    .line 478
    .line 479
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDecorationSurface:Landroid/view/SurfaceControl;

    .line 480
    .line 481
    const/16 v5, 0x8

    .line 482
    .line 483
    const/high16 v6, 0x20000000

    .line 484
    .line 485
    const/4 v7, 0x0

    .line 486
    move-object p0, v2

    .line 487
    move-object p1, v3

    .line 488
    move p2, v4

    .line 489
    move-object p3, v0

    .line 490
    move/from16 p4, v5

    .line 491
    .line 492
    move/from16 p5, v6

    .line 493
    .line 494
    move/from16 p6, v7

    .line 495
    .line 496
    move-object/from16 p7, v1

    .line 497
    .line 498
    invoke-interface/range {p0 .. p7}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .line 500
    .line 501
    goto :goto_1

    .line 502
    :catch_0
    move-exception v0

    .line 503
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 504
    .line 505
    .line 506
    :goto_1
    return v8
.end method

.method public final updateTouchableState(Z)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/16 p1, 0x18

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/16 p1, 0x8

    .line 7
    .line 8
    :goto_0
    move v4, p1

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mWindowSession:Landroid/view/IWindowSession;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputChannel:Landroid/view/InputChannel;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDisplayId:I

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDecorationSurface:Landroid/view/SurfaceControl;

    .line 20
    .line 21
    const/high16 v5, 0x20000000

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLastTouchRegion:Landroid/graphics/Region;

    .line 25
    .line 26
    iget-object v8, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerTouchableRegion:Landroid/graphics/Region;

    .line 27
    .line 28
    invoke-interface/range {v0 .. v8}, Landroid/view/IWindowSession;->updateInputChannelWithPointerRegion(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;Landroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 34
    .line 35
    .line 36
    :goto_1
    return-void
.end method
