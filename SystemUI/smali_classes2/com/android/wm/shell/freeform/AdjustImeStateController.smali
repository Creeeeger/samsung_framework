.class public interface abstract Lcom/android/wm/shell/freeform/AdjustImeStateController;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final EMPTY:Lcom/android/wm/shell/freeform/AdjustImeStateController$Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/freeform/AdjustImeStateController$Empty;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/wm/shell/freeform/AdjustImeStateController$Empty;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/wm/shell/freeform/AdjustImeStateController;->EMPTY:Lcom/android/wm/shell/freeform/AdjustImeStateController$Empty;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public abstract clearImeAdjustedTask()V
.end method

.method public abstract getImeStartBounds(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;)V
.end method

.method public abstract onImePositionChanged(Landroid/app/ActivityManager$RunningTaskInfo;I)V
.end method

.method public abstract onImeStartPositioning(Landroid/app/ActivityManager$RunningTaskInfo;I)V
.end method

.method public abstract onLayoutPositionEnd(Landroid/app/ActivityManager$RunningTaskInfo;I)V
.end method

.method public abstract taskGainFocus(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract taskLostFocus(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method
