	component atax is
		port (
			clock                : in  std_logic                     := 'X';             -- clk
			resetn               : in  std_logic                     := 'X';             -- reset_n
			clock2x              : in  std_logic                     := 'X';             -- clk
			start                : in  std_logic                     := 'X';             -- valid
			busy                 : out std_logic;                                        -- stall
			done                 : out std_logic;                                        -- valid
			stall                : in  std_logic                     := 'X';             -- stall
			A                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			x                    : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			y_out                : in  std_logic_vector(63 downto 0) := (others => 'X'); -- data
			avmm_0_rw_address    : out std_logic_vector(63 downto 0);                    -- address
			avmm_0_rw_byteenable : out std_logic_vector(7 downto 0);                     -- byteenable
			avmm_0_rw_read       : out std_logic;                                        -- read
			avmm_0_rw_readdata   : in  std_logic_vector(63 downto 0) := (others => 'X'); -- readdata
			avmm_0_rw_write      : out std_logic;                                        -- write
			avmm_0_rw_writedata  : out std_logic_vector(63 downto 0)                     -- writedata
		);
	end component atax;

	u0 : component atax
		port map (
			clock                => CONNECTED_TO_clock,                --     clock.clk
			resetn               => CONNECTED_TO_resetn,               --     reset.reset_n
			clock2x              => CONNECTED_TO_clock2x,              --   clock2x.clk
			start                => CONNECTED_TO_start,                --      call.valid
			busy                 => CONNECTED_TO_busy,                 --          .stall
			done                 => CONNECTED_TO_done,                 --    return.valid
			stall                => CONNECTED_TO_stall,                --          .stall
			A                    => CONNECTED_TO_A,                    --         A.data
			x                    => CONNECTED_TO_x,                    --         x.data
			y_out                => CONNECTED_TO_y_out,                --     y_out.data
			avmm_0_rw_address    => CONNECTED_TO_avmm_0_rw_address,    -- avmm_0_rw.address
			avmm_0_rw_byteenable => CONNECTED_TO_avmm_0_rw_byteenable, --          .byteenable
			avmm_0_rw_read       => CONNECTED_TO_avmm_0_rw_read,       --          .read
			avmm_0_rw_readdata   => CONNECTED_TO_avmm_0_rw_readdata,   --          .readdata
			avmm_0_rw_write      => CONNECTED_TO_avmm_0_rw_write,      --          .write
			avmm_0_rw_writedata  => CONNECTED_TO_avmm_0_rw_writedata   --          .writedata
		);

