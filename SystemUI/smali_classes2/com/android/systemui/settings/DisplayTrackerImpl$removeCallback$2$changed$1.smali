.class public final Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$2$changed$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $callback:Lcom/android/systemui/settings/DisplayTracker$Callback;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/DisplayTracker$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$2$changed$1;->$callback:Lcom/android/systemui/settings/DisplayTracker$Callback;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/systemui/settings/DisplayTrackerImpl$removeCallback$2$changed$1;->$callback:Lcom/android/systemui/settings/DisplayTracker$Callback;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/android/systemui/settings/DisplayTrackerImpl$DisplayTrackerDataItem;->callback:Ljava/lang/ref/WeakReference;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/systemui/settings/DisplayTracker$Callback;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x1

    .line 21
    :goto_0
    return p0
.end method
