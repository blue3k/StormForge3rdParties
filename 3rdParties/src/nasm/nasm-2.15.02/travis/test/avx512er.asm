; AVX-512ER testcases from gas
;------------------------
;
; This file is taken from there
;     https://gnu.googlesource.com/binutils/+/master/gas/testsuite/gas/i386/x86-64-avx512er-intel.d
; So the original author is "H.J. Lu" <hongjiu dot lu at intel dot com>
;
; Jin Kyu Song converted it for the nasm testing suite using gas2nasm.py

%macro testcase 2
 %ifdef BIN
  db %1
 %endif
 %ifdef SRC
  %2
 %endif
%endmacro


bits 64

testcase	{ 0x62, 0x02, 0x7d, 0x48, 0xc8, 0xf5                                     }, { vexp2ps zmm30,zmm29                                          }
testcase	{ 0x62, 0x02, 0x7d, 0x18, 0xc8, 0xf5                                     }, { vexp2ps zmm30,zmm29,{sae}                                    }
testcase	{ 0x62, 0x62, 0x7d, 0x48, 0xc8, 0x31                                     }, { vexp2ps zmm30,ZWORD [rcx]                                    }
testcase	{ 0x62, 0x22, 0x7d, 0x48, 0xc8, 0xb4, 0xf0, 0x23, 0x01, 0x00, 0x00       }, { vexp2ps zmm30,ZWORD [rax+r14*8+0x123]                        }
testcase	{ 0x62, 0x62, 0x7d, 0x58, 0xc8, 0x31                                     }, { vexp2ps zmm30,DWORD [rcx]{1to16}                             }
testcase	{ 0x62, 0x62, 0x7d, 0x48, 0xc8, 0x72, 0x7f                               }, { vexp2ps zmm30,ZWORD [rdx+0x1fc0]                             }
testcase	{ 0x62, 0x62, 0x7d, 0x48, 0xc8, 0xb2, 0x00, 0x20, 0x00, 0x00             }, { vexp2ps zmm30,ZWORD [rdx+0x2000]                             }
testcase	{ 0x62, 0x62, 0x7d, 0x48, 0xc8, 0x72, 0x80                               }, { vexp2ps zmm30,ZWORD [rdx-0x2000]                             }
testcase	{ 0x62, 0x62, 0x7d, 0x48, 0xc8, 0xb2, 0xc0, 0xdf, 0xff, 0xff             }, { vexp2ps zmm30,ZWORD [rdx-0x2040]                             }
testcase	{ 0x62, 0x62, 0x7d, 0x58, 0xc8, 0x72, 0x7f                               }, { vexp2ps zmm30,DWORD [rdx+0x1fc]{1to16}                       }
testcase	{ 0x62, 0x62, 0x7d, 0x58, 0xc8, 0xb2, 0x00, 0x02, 0x00, 0x00             }, { vexp2ps zmm30,DWORD [rdx+0x200]{1to16}                       }
testcase	{ 0x62, 0x62, 0x7d, 0x58, 0xc8, 0x72, 0x80                               }, { vexp2ps zmm30,DWORD [rdx-0x200]{1to16}                       }
testcase	{ 0x62, 0x62, 0x7d, 0x58, 0xc8, 0xb2, 0xfc, 0xfd, 0xff, 0xff             }, { vexp2ps zmm30,DWORD [rdx-0x204]{1to16}                       }
testcase	{ 0x62, 0x02, 0xfd, 0x48, 0xc8, 0xf5                                     }, { vexp2pd zmm30,zmm29                                          }
testcase	{ 0x62, 0x02, 0xfd, 0x18, 0xc8, 0xf5                                     }, { vexp2pd zmm30,zmm29,{sae}                                    }
testcase	{ 0x62, 0x62, 0xfd, 0x48, 0xc8, 0x31                                     }, { vexp2pd zmm30,ZWORD [rcx]                                    }
testcase	{ 0x62, 0x22, 0xfd, 0x48, 0xc8, 0xb4, 0xf0, 0x23, 0x01, 0x00, 0x00       }, { vexp2pd zmm30,ZWORD [rax+r14*8+0x123]                        }
testcase	{ 0x62, 0x62, 0xfd, 0x58, 0xc8, 0x31                                     }, { vexp2pd zmm30,QWORD [rcx]{1to8}                              }
testcase	{ 0x62, 0x62, 0xfd, 0x48, 0xc8, 0x72, 0x7f                               }, { vexp2pd zmm30,ZWORD [rdx+0x1fc0]                             }
testcase	{ 0x62, 0x62, 0xfd, 0x48, 0xc8, 0xb2, 0x00, 0x20, 0x00, 0x00             }, { vexp2pd zmm30,ZWORD [rdx+0x2000]                             }
testcase	{ 0x62, 0x62, 0xfd, 0x48, 0xc8, 0x72, 0x80                               }, { vexp2pd zmm30,ZWORD [rdx-0x2000]                             }
testcase	{ 0x62, 0x62, 0xfd, 0x48, 0xc8, 0xb2, 0xc0, 0xdf, 0xff, 0xff             }, { vexp2pd zmm30,ZWORD [rdx-0x2040]                             }
testcase	{ 0x62, 0x62, 0xfd, 0x58, 0xc8, 0x72, 0x7f                               }, { vexp2pd zmm30,QWORD [rdx+0x3f8]{1to8}                        }
testcase	{ 0x62, 0x62, 0xfd, 0x58, 0xc8, 0xb2, 0x00, 0x04, 0x00, 0x00             }, { vexp2pd zmm30,QWORD [rdx+0x400]{1to8}                        }
testcase	{ 0x62, 0x62, 0xfd, 0x58, 0xc8, 0x72, 0x80                               }, { vexp2pd zmm30,QWORD [rdx-0x400]{1to8}                        }
testcase	{ 0x62, 0x62, 0xfd, 0x58, 0xc8, 0xb2, 0xf8, 0xfb, 0xff, 0xff             }, { vexp2pd zmm30,QWORD [rdx-0x408]{1to8}                        }
testcase	{ 0x62, 0x02, 0x7d, 0x48, 0xca, 0xf5                                     }, { vrcp28ps zmm30,zmm29                                         }
testcase	{ 0x62, 0x02, 0x7d, 0x4f, 0xca, 0xf5                                     }, { vrcp28ps zmm30{k7},zmm29                                     }
testcase	{ 0x62, 0x02, 0x7d, 0xcf, 0xca, 0xf5                                     }, { vrcp28ps zmm30{k7}{z},zmm29                                  }
testcase	{ 0x62, 0x02, 0x7d, 0x18, 0xca, 0xf5                                     }, { vrcp28ps zmm30,zmm29,{sae}                                   }
testcase	{ 0x62, 0x62, 0x7d, 0x48, 0xca, 0x31                                     }, { vrcp28ps zmm30,ZWORD [rcx]                                   }
testcase	{ 0x62, 0x22, 0x7d, 0x48, 0xca, 0xb4, 0xf0, 0x23, 0x01, 0x00, 0x00       }, { vrcp28ps zmm30,ZWORD [rax+r14*8+0x123]                       }
testcase	{ 0x62, 0x62, 0x7d, 0x58, 0xca, 0x31                                     }, { vrcp28ps zmm30,DWORD [rcx]{1to16}                            }
testcase	{ 0x62, 0x62, 0x7d, 0x48, 0xca, 0x72, 0x7f                               }, { vrcp28ps zmm30,ZWORD [rdx+0x1fc0]                            }
testcase	{ 0x62, 0x62, 0x7d, 0x48, 0xca, 0xb2, 0x00, 0x20, 0x00, 0x00             }, { vrcp28ps zmm30,ZWORD [rdx+0x2000]                            }
testcase	{ 0x62, 0x62, 0x7d, 0x48, 0xca, 0x72, 0x80                               }, { vrcp28ps zmm30,ZWORD [rdx-0x2000]                            }
testcase	{ 0x62, 0x62, 0x7d, 0x48, 0xca, 0xb2, 0xc0, 0xdf, 0xff, 0xff             }, { vrcp28ps zmm30,ZWORD [rdx-0x2040]                            }
testcase	{ 0x62, 0x62, 0x7d, 0x58, 0xca, 0x72, 0x7f                               }, { vrcp28ps zmm30,DWORD [rdx+0x1fc]{1to16}                      }
testcase	{ 0x62, 0x62, 0x7d, 0x58, 0xca, 0xb2, 0x00, 0x02, 0x00, 0x00             }, { vrcp28ps zmm30,DWORD [rdx+0x200]{1to16}                      }
testcase	{ 0x62, 0x62, 0x7d, 0x58, 0xca, 0x72, 0x80                               }, { vrcp28ps zmm30,DWORD [rdx-0x200]{1to16}                      }
testcase	{ 0x62, 0x62, 0x7d, 0x58, 0xca, 0xb2, 0xfc, 0xfd, 0xff, 0xff             }, { vrcp28ps zmm30,DWORD [rdx-0x204]{1to16}                      }
testcase	{ 0x62, 0x02, 0xfd, 0x48, 0xca, 0xf5                                     }, { vrcp28pd zmm30,zmm29                                         }
testcase	{ 0x62, 0x02, 0xfd, 0x4f, 0xca, 0xf5                                     }, { vrcp28pd zmm30{k7},zmm29                                     }
testcase	{ 0x62, 0x02, 0xfd, 0xcf, 0xca, 0xf5                                     }, { vrcp28pd zmm30{k7}{z},zmm29                                  }
testcase	{ 0x62, 0x02, 0xfd, 0x18, 0xca, 0xf5                                     }, { vrcp28pd zmm30,zmm29,{sae}                                   }
testcase	{ 0x62, 0x62, 0xfd, 0x48, 0xca, 0x31                                     }, { vrcp28pd zmm30,ZWORD [rcx]                                   }
testcase	{ 0x62, 0x22, 0xfd, 0x48, 0xca, 0xb4, 0xf0, 0x23, 0x01, 0x00, 0x00       }, { vrcp28pd zmm30,ZWORD [rax+r14*8+0x123]                       }
testcase	{ 0x62, 0x62, 0xfd, 0x58, 0xca, 0x31                                     }, { vrcp28pd zmm30,QWORD [rcx]{1to8}                             }
testcase	{ 0x62, 0x62, 0xfd, 0x48, 0xca, 0x72, 0x7f                               }, { vrcp28pd zmm30,ZWORD [rdx+0x1fc0]                            }
testcase	{ 0x62, 0x62, 0xfd, 0x48, 0xca, 0xb2, 0x00, 0x20, 0x00, 0x00             }, { vrcp28pd zmm30,ZWORD [rdx+0x2000]                            }
testcase	{ 0x62, 0x62, 0xfd, 0x48, 0xca, 0x72, 0x80                               }, { vrcp28pd zmm30,ZWORD [rdx-0x2000]                            }
testcase	{ 0x62, 0x62, 0xfd, 0x48, 0xca, 0xb2, 0xc0, 0xdf, 0xff, 0xff             }, { vrcp28pd zmm30,ZWORD [rdx-0x2040]                            }
testcase	{ 0x62, 0x62, 0xfd, 0x58, 0xca, 0x72, 0x7f                               }, { vrcp28pd zmm30,QWORD [rdx+0x3f8]{1to8}                       }
testcase	{ 0x62, 0x62, 0xfd, 0x58, 0xca, 0xb2, 0x00, 0x04, 0x00, 0x00             }, { vrcp28pd zmm30,QWORD [rdx+0x400]{1to8}                       }
testcase	{ 0x62, 0x62, 0xfd, 0x58, 0xca, 0x72, 0x80                               }, { vrcp28pd zmm30,QWORD [rdx-0x400]{1to8}                       }
testcase	{ 0x62, 0x62, 0xfd, 0x58, 0xca, 0xb2, 0xf8, 0xfb, 0xff, 0xff             }, { vrcp28pd zmm30,QWORD [rdx-0x408]{1to8}                       }
testcase	{ 0x62, 0x02, 0x15, 0x07, 0xcb, 0xf4                                     }, { vrcp28ss xmm30{k7},xmm29,xmm28                               }
testcase	{ 0x62, 0x02, 0x15, 0x87, 0xcb, 0xf4                                     }, { vrcp28ss xmm30{k7}{z},xmm29,xmm28                            }
testcase	{ 0x62, 0x02, 0x15, 0x17, 0xcb, 0xf4                                     }, { vrcp28ss xmm30{k7},xmm29,xmm28,{sae}                         }
testcase	{ 0x62, 0x62, 0x15, 0x07, 0xcb, 0x31                                     }, { vrcp28ss xmm30{k7},xmm29,DWORD [rcx]                         }
testcase	{ 0x62, 0x22, 0x15, 0x07, 0xcb, 0xb4, 0xf0, 0x23, 0x01, 0x00, 0x00       }, { vrcp28ss xmm30{k7},xmm29,DWORD [rax+r14*8+0x123]             }
testcase	{ 0x62, 0x62, 0x15, 0x07, 0xcb, 0x72, 0x7f                               }, { vrcp28ss xmm30{k7},xmm29,DWORD [rdx+0x1fc]                   }
testcase	{ 0x62, 0x62, 0x15, 0x07, 0xcb, 0xb2, 0x00, 0x02, 0x00, 0x00             }, { vrcp28ss xmm30{k7},xmm29,DWORD [rdx+0x200]                   }
testcase	{ 0x62, 0x62, 0x15, 0x07, 0xcb, 0x72, 0x80                               }, { vrcp28ss xmm30{k7},xmm29,DWORD [rdx-0x200]                   }
testcase	{ 0x62, 0x62, 0x15, 0x07, 0xcb, 0xb2, 0xfc, 0xfd, 0xff, 0xff             }, { vrcp28ss xmm30{k7},xmm29,DWORD [rdx-0x204]                   }
testcase	{ 0x62, 0x02, 0x95, 0x07, 0xcb, 0xf4                                     }, { vrcp28sd xmm30{k7},xmm29,xmm28                               }
testcase	{ 0x62, 0x02, 0x95, 0x87, 0xcb, 0xf4                                     }, { vrcp28sd xmm30{k7}{z},xmm29,xmm28                            }
testcase	{ 0x62, 0x02, 0x95, 0x17, 0xcb, 0xf4                                     }, { vrcp28sd xmm30{k7},xmm29,xmm28,{sae}                         }
testcase	{ 0x62, 0x62, 0x95, 0x07, 0xcb, 0x31                                     }, { vrcp28sd xmm30{k7},xmm29,QWORD [rcx]                         }
testcase	{ 0x62, 0x22, 0x95, 0x07, 0xcb, 0xb4, 0xf0, 0x23, 0x01, 0x00, 0x00       }, { vrcp28sd xmm30{k7},xmm29,QWORD [rax+r14*8+0x123]             }
testcase	{ 0x62, 0x62, 0x95, 0x07, 0xcb, 0x72, 0x7f                               }, { vrcp28sd xmm30{k7},xmm29,QWORD [rdx+0x3f8]                   }
testcase	{ 0x62, 0x62, 0x95, 0x07, 0xcb, 0xb2, 0x00, 0x04, 0x00, 0x00             }, { vrcp28sd xmm30{k7},xmm29,QWORD [rdx+0x400]                   }
testcase	{ 0x62, 0x62, 0x95, 0x07, 0xcb, 0x72, 0x80                               }, { vrcp28sd xmm30{k7},xmm29,QWORD [rdx-0x400]                   }
testcase	{ 0x62, 0x62, 0x95, 0x07, 0xcb, 0xb2, 0xf8, 0xfb, 0xff, 0xff             }, { vrcp28sd xmm30{k7},xmm29,QWORD [rdx-0x408]                   }
testcase	{ 0x62, 0x02, 0x7d, 0x48, 0xcc, 0xf5                                     }, { vrsqrt28ps zmm30,zmm29                                       }
testcase	{ 0x62, 0x02, 0x7d, 0x4f, 0xcc, 0xf5                                     }, { vrsqrt28ps zmm30{k7},zmm29                                   }
testcase	{ 0x62, 0x02, 0x7d, 0xcf, 0xcc, 0xf5                                     }, { vrsqrt28ps zmm30{k7}{z},zmm29                                }
testcase	{ 0x62, 0x02, 0x7d, 0x18, 0xcc, 0xf5                                     }, { vrsqrt28ps zmm30,zmm29,{sae}                                 }
testcase	{ 0x62, 0x62, 0x7d, 0x48, 0xcc, 0x31                                     }, { vrsqrt28ps zmm30,ZWORD [rcx]                                 }
testcase	{ 0x62, 0x22, 0x7d, 0x48, 0xcc, 0xb4, 0xf0, 0x23, 0x01, 0x00, 0x00       }, { vrsqrt28ps zmm30,ZWORD [rax+r14*8+0x123]                     }
testcase	{ 0x62, 0x62, 0x7d, 0x58, 0xcc, 0x31                                     }, { vrsqrt28ps zmm30,DWORD [rcx]{1to16}                          }
testcase	{ 0x62, 0x62, 0x7d, 0x48, 0xcc, 0x72, 0x7f                               }, { vrsqrt28ps zmm30,ZWORD [rdx+0x1fc0]                          }
testcase	{ 0x62, 0x62, 0x7d, 0x48, 0xcc, 0xb2, 0x00, 0x20, 0x00, 0x00             }, { vrsqrt28ps zmm30,ZWORD [rdx+0x2000]                          }
testcase	{ 0x62, 0x62, 0x7d, 0x48, 0xcc, 0x72, 0x80                               }, { vrsqrt28ps zmm30,ZWORD [rdx-0x2000]                          }
testcase	{ 0x62, 0x62, 0x7d, 0x48, 0xcc, 0xb2, 0xc0, 0xdf, 0xff, 0xff             }, { vrsqrt28ps zmm30,ZWORD [rdx-0x2040]                          }
testcase	{ 0x62, 0x62, 0x7d, 0x58, 0xcc, 0x72, 0x7f                               }, { vrsqrt28ps zmm30,DWORD [rdx+0x1fc]{1to16}                    }
testcase	{ 0x62, 0x62, 0x7d, 0x58, 0xcc, 0xb2, 0x00, 0x02, 0x00, 0x00             }, { vrsqrt28ps zmm30,DWORD [rdx+0x200]{1to16}                    }
testcase	{ 0x62, 0x62, 0x7d, 0x58, 0xcc, 0x72, 0x80                               }, { vrsqrt28ps zmm30,DWORD [rdx-0x200]{1to16}                    }
testcase	{ 0x62, 0x62, 0x7d, 0x58, 0xcc, 0xb2, 0xfc, 0xfd, 0xff, 0xff             }, { vrsqrt28ps zmm30,DWORD [rdx-0x204]{1to16}                    }
testcase	{ 0x62, 0x02, 0xfd, 0x48, 0xcc, 0xf5                                     }, { vrsqrt28pd zmm30,zmm29                                       }
testcase	{ 0x62, 0x02, 0xfd, 0x4f, 0xcc, 0xf5                                     }, { vrsqrt28pd zmm30{k7},zmm29                                   }
testcase	{ 0x62, 0x02, 0xfd, 0xcf, 0xcc, 0xf5                                     }, { vrsqrt28pd zmm30{k7}{z},zmm29                                }
testcase	{ 0x62, 0x02, 0xfd, 0x18, 0xcc, 0xf5                                     }, { vrsqrt28pd zmm30,zmm29,{sae}                                 }
testcase	{ 0x62, 0x62, 0xfd, 0x48, 0xcc, 0x31                                     }, { vrsqrt28pd zmm30,ZWORD [rcx]                                 }
testcase	{ 0x62, 0x22, 0xfd, 0x48, 0xcc, 0xb4, 0xf0, 0x23, 0x01, 0x00, 0x00       }, { vrsqrt28pd zmm30,ZWORD [rax+r14*8+0x123]                     }
testcase	{ 0x62, 0x62, 0xfd, 0x58, 0xcc, 0x31                                     }, { vrsqrt28pd zmm30,QWORD [rcx]{1to8}                           }
testcase	{ 0x62, 0x62, 0xfd, 0x48, 0xcc, 0x72, 0x7f                               }, { vrsqrt28pd zmm30,ZWORD [rdx+0x1fc0]                          }
testcase	{ 0x62, 0x62, 0xfd, 0x48, 0xcc, 0xb2, 0x00, 0x20, 0x00, 0x00             }, { vrsqrt28pd zmm30,ZWORD [rdx+0x2000]                          }
testcase	{ 0x62, 0x62, 0xfd, 0x48, 0xcc, 0x72, 0x80                               }, { vrsqrt28pd zmm30,ZWORD [rdx-0x2000]                          }
testcase	{ 0x62, 0x62, 0xfd, 0x48, 0xcc, 0xb2, 0xc0, 0xdf, 0xff, 0xff             }, { vrsqrt28pd zmm30,ZWORD [rdx-0x2040]                          }
testcase	{ 0x62, 0x62, 0xfd, 0x58, 0xcc, 0x72, 0x7f                               }, { vrsqrt28pd zmm30,QWORD [rdx+0x3f8]{1to8}                     }
testcase	{ 0x62, 0x62, 0xfd, 0x58, 0xcc, 0xb2, 0x00, 0x04, 0x00, 0x00             }, { vrsqrt28pd zmm30,QWORD [rdx+0x400]{1to8}                     }
testcase	{ 0x62, 0x62, 0xfd, 0x58, 0xcc, 0x72, 0x80                               }, { vrsqrt28pd zmm30,QWORD [rdx-0x400]{1to8}                     }
testcase	{ 0x62, 0x62, 0xfd, 0x58, 0xcc, 0xb2, 0xf8, 0xfb, 0xff, 0xff             }, { vrsqrt28pd zmm30,QWORD [rdx-0x408]{1to8}                     }
testcase	{ 0x62, 0x02, 0x15, 0x07, 0xcd, 0xf4                                     }, { vrsqrt28ss xmm30{k7},xmm29,xmm28                             }
testcase	{ 0x62, 0x02, 0x15, 0x87, 0xcd, 0xf4                                     }, { vrsqrt28ss xmm30{k7}{z},xmm29,xmm28                          }
testcase	{ 0x62, 0x02, 0x15, 0x17, 0xcd, 0xf4                                     }, { vrsqrt28ss xmm30{k7},xmm29,xmm28,{sae}                       }
testcase	{ 0x62, 0x62, 0x15, 0x07, 0xcd, 0x31                                     }, { vrsqrt28ss xmm30{k7},xmm29,DWORD [rcx]                       }
testcase	{ 0x62, 0x22, 0x15, 0x07, 0xcd, 0xb4, 0xf0, 0x23, 0x01, 0x00, 0x00       }, { vrsqrt28ss xmm30{k7},xmm29,DWORD [rax+r14*8+0x123]           }
testcase	{ 0x62, 0x62, 0x15, 0x07, 0xcd, 0x72, 0x7f                               }, { vrsqrt28ss xmm30{k7},xmm29,DWORD [rdx+0x1fc]                 }
testcase	{ 0x62, 0x62, 0x15, 0x07, 0xcd, 0xb2, 0x00, 0x02, 0x00, 0x00             }, { vrsqrt28ss xmm30{k7},xmm29,DWORD [rdx+0x200]                 }
testcase	{ 0x62, 0x62, 0x15, 0x07, 0xcd, 0x72, 0x80                               }, { vrsqrt28ss xmm30{k7},xmm29,DWORD [rdx-0x200]                 }
testcase	{ 0x62, 0x62, 0x15, 0x07, 0xcd, 0xb2, 0xfc, 0xfd, 0xff, 0xff             }, { vrsqrt28ss xmm30{k7},xmm29,DWORD [rdx-0x204]                 }
testcase	{ 0x62, 0x02, 0x95, 0x07, 0xcd, 0xf4                                     }, { vrsqrt28sd xmm30{k7},xmm29,xmm28                             }
testcase	{ 0x62, 0x02, 0x95, 0x87, 0xcd, 0xf4                                     }, { vrsqrt28sd xmm30{k7}{z},xmm29,xmm28                          }
testcase	{ 0x62, 0x02, 0x95, 0x17, 0xcd, 0xf4                                     }, { vrsqrt28sd xmm30{k7},xmm29,xmm28,{sae}                       }
testcase	{ 0x62, 0x62, 0x95, 0x07, 0xcd, 0x31                                     }, { vrsqrt28sd xmm30{k7},xmm29,QWORD [rcx]                       }
testcase	{ 0x62, 0x22, 0x95, 0x07, 0xcd, 0xb4, 0xf0, 0x23, 0x01, 0x00, 0x00       }, { vrsqrt28sd xmm30{k7},xmm29,QWORD [rax+r14*8+0x123]           }
testcase	{ 0x62, 0x62, 0x95, 0x07, 0xcd, 0x72, 0x7f                               }, { vrsqrt28sd xmm30{k7},xmm29,QWORD [rdx+0x3f8]                 }
testcase	{ 0x62, 0x62, 0x95, 0x07, 0xcd, 0xb2, 0x00, 0x04, 0x00, 0x00             }, { vrsqrt28sd xmm30{k7},xmm29,QWORD [rdx+0x400]                 }
testcase	{ 0x62, 0x62, 0x95, 0x07, 0xcd, 0x72, 0x80                               }, { vrsqrt28sd xmm30{k7},xmm29,QWORD [rdx-0x400]                 }
testcase	{ 0x62, 0x62, 0x95, 0x07, 0xcd, 0xb2, 0xf8, 0xfb, 0xff, 0xff             }, { vrsqrt28sd xmm30{k7},xmm29,QWORD [rdx-0x408]                 }
