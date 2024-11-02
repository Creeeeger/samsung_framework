.class Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$PinnedActivityInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PinnedActivityInfo"
.end annotation


# instance fields
.field final mPackageName:Ljava/lang/String;

.field final mStackId:I

.field final mTaskId:I

.field final mUserId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$PinnedActivityInfo;->mPackageName:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$PinnedActivityInfo;->mUserId:I

    .line 7
    .line 8
    iput p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$PinnedActivityInfo;->mTaskId:I

    .line 9
    .line 10
    iput p4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/TaskStackChangeListeners$PinnedActivityInfo;->mStackId:I

    .line 11
    .line 12
    return-void
.end method
