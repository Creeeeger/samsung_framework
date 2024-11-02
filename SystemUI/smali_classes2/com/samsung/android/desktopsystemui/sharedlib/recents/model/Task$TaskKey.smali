.class public Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskKey"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public baseActivity:Landroid/content/ComponentName;

.field public final baseIntent:Landroid/content/Intent;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public final displayId:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public final id:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isPairTask:Z

.field public lastActiveTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public lastGainFocusTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mHashCode:I

.field public pairDockSide:I

.field public pairedTaskIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final sourceComponent:Landroid/content/ComponentName;

.field public final userId:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public windowingMode:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    .line 3
    iput p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    .line 4
    iput-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 5
    iput-object p4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    .line 6
    iput p5, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    .line 7
    iput-wide p6, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastActiveTime:J

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->displayId:I

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->updateHashCode()V

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJI)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    .line 12
    iput p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    .line 13
    iput-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 14
    iput-object p4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    .line 15
    iput p5, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    .line 16
    iput-wide p6, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 17
    iput p8, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->displayId:I

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->updateHashCode()V

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJIZLjava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            "Landroid/content/ComponentName;",
            "IJIZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 19
    invoke-direct/range {p0 .. p8}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJI)V

    .line 20
    iput-boolean p9, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->isPairTask:Z

    .line 21
    iput-object p10, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->pairedTaskIds:Ljava/util/ArrayList;

    .line 22
    iput p11, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->pairDockSide:I

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJJ)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    .line 51
    iput p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    .line 52
    iput-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 53
    iput-object p4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    .line 54
    iput p5, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    .line 55
    iput-wide p6, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 56
    iput-wide p8, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastGainFocusTime:J

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->displayId:I

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->updateHashCode()V

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJJI)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    .line 61
    iput p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    .line 62
    iput-object p3, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 63
    iput-object p4, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    .line 64
    iput p5, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    .line 65
    iput-wide p6, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 66
    iput-wide p8, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastGainFocusTime:J

    .line 67
    iput p10, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->displayId:I

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->updateHashCode()V

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJJIZLjava/util/ArrayList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/content/Intent;",
            "Landroid/content/ComponentName;",
            "IJJIZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 23
    invoke-direct/range {p0 .. p10}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJJI)V

    .line 24
    iput-boolean p11, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->isPairTask:Z

    .line 25
    iput-object p12, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->pairedTaskIds:Ljava/util/ArrayList;

    .line 26
    iput p13, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->pairDockSide:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    .line 29
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->getWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->getSourceComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    .line 33
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->getLastActiveTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 34
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->displayId:I

    .line 35
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->getLastGainFocusTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastGainFocusTime:J

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->updateHashCode()V

    .line 37
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->isPairTask()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->isPairTask:Z

    .line 38
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RecentTaskInfoCompat;->getPairedTaskIds()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->pairedTaskIds:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->getTaskId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->getWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    .line 42
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 43
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->getSourceComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    .line 44
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    .line 45
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->getLastActiveTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 46
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->displayId:I

    .line 47
    invoke-virtual {p1}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/RunningTaskInfoCompat;->getLastGainFocusTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastGainFocusTime:J

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->updateHashCode()V

    return-void
.end method

.method public static synthetic access$000(Landroid/os/Parcel;)Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->readFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    move-object v3, v0

    .line 16
    check-cast v3, Landroid/content/Intent;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    .line 23
    .line 24
    .line 25
    move-result-wide v6

    .line 26
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    .line 27
    .line 28
    .line 29
    move-result-wide v8

    .line 30
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v4, v0

    .line 41
    check-cast v4, Landroid/content/ComponentName;

    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    .line 44
    .line 45
    .line 46
    move-result v11

    .line 47
    const-class v0, Ljava/lang/Integer;

    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result v13

    .line 61
    new-instance p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    .line 62
    .line 63
    move-object v0, p0

    .line 64
    invoke-direct/range {v0 .. v13}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;-><init>(IILandroid/content/Intent;Landroid/content/ComponentName;IJJIZLjava/util/ArrayList;I)V

    .line 65
    .line 66
    .line 67
    return-object p0
.end method

.method private updateHashCode()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iput v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->mHashCode:I

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;

    .line 8
    .line 9
    iget v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    .line 10
    .line 11
    iget v2, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    .line 16
    .line 17
    iget v2, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    iget p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    .line 22
    .line 23
    iget p1, p1, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    .line 24
    .line 25
    if-ne p0, p1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    :cond_1
    return v1
.end method

.method public getBaseIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 2
    .line 3
    return-object p0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public getDisplayId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->displayId:I

    .line 2
    .line 3
    return p0
.end method

.method public getId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    .line 2
    .line 3
    return p0
.end method

.method public getLastActiveTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLastGainFocusTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastGainFocusTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public getSourceComponent()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    .line 2
    .line 3
    return p0
.end method

.method public getWindowingMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    .line 2
    .line 3
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->mHashCode:I

    .line 2
    .line 3
    return p0
.end method

.method public setWindowingMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->updateHashCode()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " windowingMode="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, " user="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, " lastActiveTime="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "lastGainFocusTime"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastGainFocusTime:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->id:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->windowingMode:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->userId:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 22
    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 24
    .line 25
    .line 26
    iget-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->lastGainFocusTime:J

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->displayId:I

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->sourceComponent:Landroid/content/ComponentName;

    .line 37
    .line 38
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 39
    .line 40
    .line 41
    iget-boolean p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->isPairTask:Z

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->pairedTaskIds:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 49
    .line 50
    .line 51
    iget p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/recents/model/Task$TaskKey;->pairDockSide:I

    .line 52
    .line 53
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
