.class public final Landroidx/appcompat/widget/SeslProgressBar$RefreshData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final sPool:Landroidx/core/util/Pools$SynchronizedPool;


# instance fields
.field public animate:Z

.field public fromUser:Z

.field public id:I

.field public progress:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->sPool:Landroidx/core/util/Pools$SynchronizedPool;

    .line 9
    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(IIZZ)Landroidx/appcompat/widget/SeslProgressBar$RefreshData;
    .locals 1

    .line 1
    sget-object v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->sPool:Landroidx/core/util/Pools$SynchronizedPool;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/core/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;

    .line 12
    .line 13
    invoke-direct {v0}, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;-><init>()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput p0, v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->id:I

    .line 17
    .line 18
    iput p1, v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->progress:I

    .line 19
    .line 20
    iput-boolean p2, v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->fromUser:Z

    .line 21
    .line 22
    iput-boolean p3, v0, Landroidx/appcompat/widget/SeslProgressBar$RefreshData;->animate:Z

    .line 23
    .line 24
    return-object v0
.end method
