.class public final Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;
.super Lcom/android/systemui/util/leak/AbstractCollection;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final instances:Lcom/android/systemui/util/leak/WeakIdentityHashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/util/leak/AbstractCollection;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;->instances:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final isEmpty()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;->instances:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->cleanUp()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mMap:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/util/leak/TrackedObjects$TrackedClass;->instances:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->cleanUp()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mMap:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0
.end method
