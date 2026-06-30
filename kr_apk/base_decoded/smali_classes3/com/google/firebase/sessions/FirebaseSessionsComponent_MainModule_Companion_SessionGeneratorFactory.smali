.class public final Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory;
.super Ljava/lang/Object;
.source "FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory.java"

# interfaces
.implements Lcom/google/firebase/sessions/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/sessions/dagger/internal/Factory<",
        "Lcom/google/firebase/sessions/SessionGenerator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .array-data 1
    .end array-data
.end method

.method public static create()Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory;
    .locals 1

    .line 24
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory$InstanceHolder;->access$000()Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public static sessionGenerator()Lcom/google/firebase/sessions/SessionGenerator;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule;->Companion:Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule$Companion;

    invoke-virtual {v0}, Lcom/google/firebase/sessions/FirebaseSessionsComponent$MainModule$Companion;->sessionGenerator()Lcom/google/firebase/sessions/SessionGenerator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/sessions/dagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/sessions/SessionGenerator;

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method


# virtual methods
.method public get()Lcom/google/firebase/sessions/SessionGenerator;
    .locals 1

    .line 20
    invoke-static {}, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory;->sessionGenerator()Lcom/google/firebase/sessions/SessionGenerator;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/sessions/FirebaseSessionsComponent_MainModule_Companion_SessionGeneratorFactory;->get()Lcom/google/firebase/sessions/SessionGenerator;

    move-result-object v0

    return-object v0

    nop

    .array-data 1
    .end array-data
.end method
