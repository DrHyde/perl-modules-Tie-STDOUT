use ExtUtils::MakeMaker;
WriteMakefile(
    NAME      => 'Tie::STDOUT',
    VERSION   => '1.02',
    PREREQ_PM => {
        File::Temp => 0, # all used for testing only
        Test::More => 0,
        Config     => 0
    }
);
