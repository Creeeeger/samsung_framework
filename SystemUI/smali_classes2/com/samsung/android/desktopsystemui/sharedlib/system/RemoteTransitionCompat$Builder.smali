.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderFieldsSet:J

.field private mFilter:Landroid/window/TransitionFilter;

.field private mTransition:Landroid/window/RemoteTransition;


# direct methods
.method public constructor <init>(Landroid/window/RemoteTransition;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;->mBuilderFieldsSet:J

    .line 7
    .line 8
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;->mTransition:Landroid/window/RemoteTransition;

    .line 9
    .line 10
    const-class p0, Landroid/annotation/NonNull;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-static {p0, v0, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private checkNotUsed()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;->mBuilderFieldsSet:J

    .line 2
    .line 3
    const-wide/16 v2, 0x4

    .line 4
    .line 5
    and-long/2addr v0, v2

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long p0, v0, v2

    .line 9
    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    const-string v0, "This Builder should not be reused. Use a new Builder instance instead"

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;->checkNotUsed()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;->mBuilderFieldsSet:J

    .line 5
    .line 6
    const-wide/16 v2, 0x4

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;->mBuilderFieldsSet:J

    .line 10
    .line 11
    const-wide/16 v2, 0x2

    .line 12
    .line 13
    and-long/2addr v0, v2

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    cmp-long v0, v0, v2

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;->mFilter:Landroid/window/TransitionFilter;

    .line 22
    .line 23
    :cond_0
    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;->mTransition:Landroid/window/RemoteTransition;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;->mFilter:Landroid/window/TransitionFilter;

    .line 28
    .line 29
    invoke-direct {v0, v1, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat;-><init>(Landroid/window/RemoteTransition;Landroid/window/TransitionFilter;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public setFilter(Landroid/window/TransitionFilter;)Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;->checkNotUsed()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;->mBuilderFieldsSet:J

    .line 5
    .line 6
    const-wide/16 v2, 0x2

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;->mBuilderFieldsSet:J

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;->mFilter:Landroid/window/TransitionFilter;

    .line 12
    .line 13
    return-object p0
.end method

.method public setTransition(Landroid/window/RemoteTransition;)Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;->checkNotUsed()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;->mBuilderFieldsSet:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;->mBuilderFieldsSet:J

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/RemoteTransitionCompat$Builder;->mTransition:Landroid/window/RemoteTransition;

    .line 12
    .line 13
    return-object p0
.end method
