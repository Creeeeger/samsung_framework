.class public final Lio/reactivex/internal/functions/Functions;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final EMPTY_ACTION:Lio/reactivex/internal/functions/Functions$EmptyAction;

.field public static final EMPTY_CONSUMER:Lio/reactivex/internal/functions/Functions$EmptyConsumer;

.field public static final EMPTY_RUNNABLE:Lio/reactivex/internal/functions/Functions$EmptyRunnable;

.field public static final ON_ERROR_MISSING:Lio/reactivex/internal/functions/Functions$OnErrorMissingConsumer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/internal/functions/Functions$Identity;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$Identity;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/reactivex/internal/functions/Functions$EmptyRunnable;

    .line 7
    .line 8
    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$EmptyRunnable;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lio/reactivex/internal/functions/Functions;->EMPTY_RUNNABLE:Lio/reactivex/internal/functions/Functions$EmptyRunnable;

    .line 12
    .line 13
    new-instance v0, Lio/reactivex/internal/functions/Functions$EmptyAction;

    .line 14
    .line 15
    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$EmptyAction;-><init>()V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lio/reactivex/internal/functions/Functions;->EMPTY_ACTION:Lio/reactivex/internal/functions/Functions$EmptyAction;

    .line 19
    .line 20
    new-instance v0, Lio/reactivex/internal/functions/Functions$EmptyConsumer;

    .line 21
    .line 22
    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$EmptyConsumer;-><init>()V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lio/reactivex/internal/functions/Functions;->EMPTY_CONSUMER:Lio/reactivex/internal/functions/Functions$EmptyConsumer;

    .line 26
    .line 27
    new-instance v0, Lio/reactivex/internal/functions/Functions$ErrorConsumer;

    .line 28
    .line 29
    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$ErrorConsumer;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lio/reactivex/internal/functions/Functions$OnErrorMissingConsumer;

    .line 33
    .line 34
    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$OnErrorMissingConsumer;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lio/reactivex/internal/functions/Functions;->ON_ERROR_MISSING:Lio/reactivex/internal/functions/Functions$OnErrorMissingConsumer;

    .line 38
    .line 39
    new-instance v0, Lio/reactivex/internal/functions/Functions$EmptyLongConsumer;

    .line 40
    .line 41
    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$EmptyLongConsumer;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v0, Lio/reactivex/internal/functions/Functions$TruePredicate;

    .line 45
    .line 46
    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$TruePredicate;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lio/reactivex/internal/functions/Functions$FalsePredicate;

    .line 50
    .line 51
    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$FalsePredicate;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lio/reactivex/internal/functions/Functions$NullCallable;

    .line 55
    .line 56
    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$NullCallable;-><init>()V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lio/reactivex/internal/functions/Functions$NaturalObjectComparator;

    .line 60
    .line 61
    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$NaturalObjectComparator;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lio/reactivex/internal/functions/Functions$MaxRequestSubscription;

    .line 65
    .line 66
    invoke-direct {v0}, Lio/reactivex/internal/functions/Functions$MaxRequestSubscription;-><init>()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 5
    .line 6
    const-string v0, "No instances!"

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method
