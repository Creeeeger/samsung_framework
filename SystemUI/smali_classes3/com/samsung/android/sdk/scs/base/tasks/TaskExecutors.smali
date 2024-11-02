.class public final Lcom/samsung/android/sdk/scs/base/tasks/TaskExecutors;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final MAIN_THREAD:Lcom/samsung/android/sdk/scs/base/tasks/TaskExecutors$MainExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskExecutors$MainExecutor;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskExecutors$MainExecutor;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskExecutors;->MAIN_THREAD:Lcom/samsung/android/sdk/scs/base/tasks/TaskExecutors$MainExecutor;

    .line 7
    .line 8
    new-instance v0, Lcom/samsung/android/sdk/scs/base/tasks/BasicExecutor;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/base/tasks/BasicExecutor;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
